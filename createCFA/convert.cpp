#include <iostream>
#include <fstream>
#include <string>

#define debug 0

using namespace std;

class pixel
{
    public:
    unsigned char R,G,B;
};

int main(int argc, char **argv)
{
    if(argc != 2)
    {
        cout << "RGB Color Filter Array Generator" << endl
             << "    ~Abhishek Srikanth    " << endl << endl
             
             << "Usage: "
             << argv[0] << " <inputFileName>" << endl << endl

             << "Output:" << endl
             << "<inputFileName>_out      : Each pixel is a Color Filter Array in format described below" << endl
             << "<inputFileName>_out_fpga : Each 32 bits contain one intensity value only." << endl
             << "                       This is useful when 32 bit intensity values are required" << endl << endl

             << "Description:" << endl
             << "Program to take a ppm image (does not support comments in image)" << endl
             << "and generate a Color Filter Array (CFA) out of it." << endl
             << "Format of CFA is as follows: " << endl
             << "| R | G | R | G | R | ..." << endl
             << "| G | B | G | B | G | ..." << endl
             << "| R | G | R | G | R | ..." << endl
             << "| G | B | G | B | G | ..." << endl
             << "..." << endl << endl;
            
        return 1;
    }

    ifstream fin(argv[1]);
    if(fin == NULL)
    {
        cout << "File could not be opened.\nCheck file path.\n";
        return 1;
    }

    char ch;
    unsigned int width,height,maxVal;
    fin.get(ch);
    if(ch != 'P')
        return 1;
    fin.get(ch);
    if(ch != '6')
        return 1;

    fin.get(ch);
    fin >> width >> height >> maxVal;
    cout << width << " x " << height << " with maxVal = " << maxVal << endl;
    if(maxVal > 255)
    {
        cout << "maxVal too big. aborting\n";
        return 1;
    }

    char readItFlag = 0;
    do
    {
        fin.get(ch);
    }
    while(ch == '\n');
    
    pixel **originalImage = new pixel* [height];
    for(unsigned int i = 0; i < height; ++i)
    {
        originalImage[i] = new pixel[width];
        for(unsigned int j = 0; j < width; ++j)
        {
            if(readItFlag) fin.get(ch);
            else readItFlag = 1;
            originalImage[i][j].R = ch;
            fin.get(ch);
            originalImage[i][j].G = ch;
            fin.get(ch);
            originalImage[i][j].B = ch;
        }
    }   
    fin.close();
    cout << "file closed\n";

    string outName = argv[1];
    outName = outName + "_out";
    ofstream fout( outName.c_str() );
    outName = outName + "_fpga";
    ofstream fout_fpga( outName.c_str() );
    fout      << "P6\n" << width+1 << " " << height+1 << "\n" << maxVal << "\n";
    fout_fpga << "P6\n" << width+1 << " " << height+1 << "\n" << maxVal << "\n";
    /*
        NOTE:
             at i = 0 and j = 0
                | R(0,0) | G(0,1) |
                | G(1,0) | B(1,1) | 
             is assumption
    */
    for(int i = 0; i < height + 1; ++i)
    {
        for(int j = 0; j < width + 1; ++j)
        {
            char color;
            if(i % 2 == 0 && j % 2 == 0) // red
                color = 'r';
            else if(i % 2 == 0 && j % 2 == 1) // green
                color = 'g';
            else if(i % 2 == 1 && j % 2 == 0) // green
                color = 'g';
            else // blue
                color = 'b';
            
            //if(debug) cout << color << ": i-1(" << i-1 << "), i+1(" << i+1 << "), j-1(" << j-1 << "), j+1(" << j+1 << ")\n"; 
            int v1 = -1, v2 = -1, v3 = -1, v4 = -1;
            if(i - 1 >= 0)
            {
                if(j - 1 >= 0)
                {
                    v1 = ( color == 'r' ? originalImage[i-1][j-1].R : color == 'g' ? originalImage[i-1][j-1].G : originalImage[i-1][j-1].B );
                }
                if(j + 1 < width)
                {
                    v2 = ( color == 'r' ? originalImage[i-1][j+1].R : color == 'g' ? originalImage[i-1][j+1].G : originalImage[i-1][j+1].B );
                }
            }
            if(i + 1 < height)
            {
                if(j - 1 >= 0)
                {
                    v3 = ( color == 'r' ? originalImage[i+1][j-1].R : color == 'g' ? originalImage[i+1][j-1].G : originalImage[i+1][j-1].B );
                }
                if(j + 1 < width)
                {
                    v4 = ( color == 'r' ? originalImage[i+1][j+1].R : color == 'g' ? originalImage[i+1][j+1].G : originalImage[i+1][j+1].B );
                }
            }

            int divisor = 0;
            long long numerator = 0;
            unsigned char result = 0;
            if(v1 != -1)
            {
                numerator += v1;
                ++divisor;
            }
            if(v2 != -1)
            {
                numerator += v2;
                ++divisor;
            }
            if(v3 != -1)
            {
                numerator += v3;
                ++divisor;
            }
            if(v4 != -1)
            {
                numerator += v4;
                ++divisor;
            }
            result = (unsigned char)(numerator/divisor); // divisor must be 1 or more (else error anyways)
            
            if(color == 'r')
            {
                fout.put(result);
                fout.put(0);
                fout.put(0);
            }
            else if(color == 'g')
            {
                fout.put(0);
                fout.put(result);
                fout.put(0);
            }
            else
            {
                fout.put(0);
                fout.put(0);
                fout.put(result);
            }
            fout_fpga.put(0);
            fout_fpga.put(0);
            fout_fpga.put(0);
            fout_fpga.put(result);
        }
    }
    fout.close();
    fout_fpga.close();
    
    if(debug)
    {   // to replicate image and see if image was read correctly
        fout.open("replicate.ppm");
        fout << "P6\n" << width << " " << height << "\n255\n";
        for(unsigned int i = 0; i < height; ++i)
            for(unsigned int j = 0; j < width; ++j)
            {
                fout << originalImage[i][j].R;
                fout << originalImage[i][j].G;
                fout << originalImage[i][j].B;
            }
        fout.close();
    }

    // memory de-allocation (starting) //
    for(unsigned int i = 0; i < height; ++i)
    {
        delete originalImage[i];
    }
    delete originalImage;
    // memory de-allocation (finished) //
    return 0;
}
