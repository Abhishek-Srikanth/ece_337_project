for i in range(0,256):
	flag = 1;
	k = i
	if(k % 2 == 0):
		k += 1
	for j in range(0,256):
		if(k * j % 256 == 1):
			strng = "assign loopUp[" + str(i) + "] = 8'd" + str(j) + ";"
			print(strng)
			#print "assign loopUp[",i,"] = 8'd", j, ";"
			flag = 0;
			break
	
