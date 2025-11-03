vlib work
vcom -93 -work work {../src/FeedbackMux-e.vhd}
vcom -93 -work work {../src/FeedbackMux-PrimImp-a.vhd}
vcom -93 -work work {../src/FeedbackMux-HazardFree-a.vhd}
vcom -93 -work work {../src/TbFeedbackMux-Bhv-ea.vhd}
vsim -novopt work.tbfeedbackmux
do Wave.do
run
wave zoom full