onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_customLogicTLD/clk
add wave -noupdate /tb_customLogicTLD/i
add wave -noupdate /tb_customLogicTLD/j
add wave -noupdate /tb_customLogicTLD/startControlRegister
add wave -noupdate /tb_customLogicTLD/sdram_datareadvalid
add wave -noupdate -radix unsigned /tb_customLogicTLD/imageWidth
add wave -noupdate -radix unsigned /tb_customLogicTLD/imageHeight
add wave -noupdate -radix unsigned /tb_customLogicTLD/start_addr_sdram
add wave -noupdate -radix unsigned /tb_customLogicTLD/finish_addr_sdram
add wave -noupdate -radix unsigned /tb_customLogicTLD/filterMode
add wave -noupdate -radix unsigned /tb_customLogicTLD/betaValue
add wave -noupdate -radix hexadecimal /tb_customLogicTLD/white
add wave -noupdate -radix hexadecimal /tb_customLogicTLD/data_sdram
add wave -noupdate -radix unsigned /tb_customLogicTLD/sdram_read_en
add wave -noupdate -radix unsigned /tb_customLogicTLD/sdram_write_en
add wave -noupdate -radix unsigned /tb_customLogicTLD/finish_flag
add wave -noupdate -radix unsigned /tb_customLogicTLD/address_sdram
add wave -noupdate -radix hexadecimal /tb_customLogicTLD/writeData_sdram
add wave -noupdate -radix unsigned /tb_customLogicTLD/exp_address_sdram
add wave -noupdate -radix unsigned /tb_customLogicTLD/exp_write_address_sdram
add wave -noupdate -radix hexadecimal /tb_customLogicTLD/sram_dataFromSDRAM
add wave -noupdate -radix hexadecimal /tb_customLogicTLD/postFilterData
add wave -noupdate -radix unsigned /tb_customLogicTLD/address_sram
add wave -noupdate -radix unsigned /tb_customLogicTLD/mode_sram
add wave -noupdate -radix unsigned /tb_customLogicTLD/addrCalc_mode_sram
add wave -noupdate -radix unsigned /tb_customLogicTLD/sram_en
add wave -noupdate -radix hexadecimal /tb_customLogicTLD/data_sram
add wave -noupdate -radix unsigned /tb_customLogicTLD/sram_datareadvalid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {41 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 215
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {952 ps}
