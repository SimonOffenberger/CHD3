vlib work
vcom -93 -work work {../src/PosEdgeTrigDFF-e.vhd}
vcom -93 -work work {../src/PosEdgeTrigDFF-AsynSeq-a.vhd}
vcom -93 -work work {../src/TbPosEdgeTrigDFF-Bhv-ea.vhd}
vsim work.TbPosEdgeTrigDFF(bhv)
add wave -r /*
#run -all
run 1 ms
