onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Primimp
add wave -noupdate -format Logic /tbfeedbackmux/dprimimp
add wave -noupdate -format Logic /tbfeedbackmux/enprimimp
add wave -noupdate -color "Medium Sea Green" -format Logic /tbfeedbackmux/qprimimp
add wave /tbfeedbackmux/FeedbackMuxPrimImp/nEn
add wave /tbfeedbackmux/FeedbackMuxPrimImp/Impl1
add wave /tbfeedbackmux/FeedbackMuxPrimImp/Impl2
add wave -noupdate -color "Medium Sea Green" -format Logic /tbfeedbackmux/qprimimp
add wave -noupdate -divider HazardFree
add wave -noupdate -format Logic /tbfeedbackmux/dhazardfree
add wave -noupdate -format Logic /tbfeedbackmux/enhazardfree
add wave -noupdate -color "Medium Sea Green" -format Logic /tbfeedbackmux/qhazardfree
add wave /tbfeedbackmux/FeedbackMuxHazardFree/nEn
add wave /tbfeedbackmux/FeedbackMuxHazardFree/Impl1
add wave /tbfeedbackmux/FeedbackMuxHazardFree/Impl2
add wave /tbfeedbackmux/FeedbackMuxHazardFree/Impl3
add wave -noupdate -color "Medium Sea Green" -format Logic /tbfeedbackmux/qhazardfree
TreeUpdate [SetDefaultTree]
configure wave -namecolwidth 160
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
update
