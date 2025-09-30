vlib work
vcom -work work ../../../grpChd2/unitHex2SevenSegment/hdl/Hex2SevenSegment-e.vhd
vcom -work work ../../../grpChd2/unitHex2SevenSegment/hdl/Hex2SevenSegment-Rtl-a.vhd
vcom -work work ../../../grpChd2/unitHello/hdl/Hello-e.vhd
vcom -work work ../../../grpChd2/unitHello/hdl/Hello-Rtl-a.vhd
vcom -work work ../../../grpChd2/unitHello/hdl/tbHello-e.vhd
vcom -work work ../../../grpChd2/unitHello/hdl/tbHello-Bhv-a.vhd
vsim -voptargs=+acc work.tbHello(Bhv)
do wave.do
run 1000 ms
