onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /posedgetrigdfftb/ClockDelayedToData
add wave -noupdate /posedgetrigdfftb/nClrDelayedToClock
add wave -noupdate /posedgetrigdfftb/Stimuli
add wave -noupdate /posedgetrigdfftb/Data
add wave -noupdate /posedgetrigdfftb/Clock
add wave -noupdate /posedgetrigdfftb/nClear
add wave -noupdate /posedgetrigdfftb/Output
add wave -noupdate /posedgetrigdfftb/nOutput
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {51930 ns} 0} {{Cursor 2} {51968 ns} 0}
configure wave -namecolwidth 223
configure wave -valuecolwidth 56
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {992 ns}
