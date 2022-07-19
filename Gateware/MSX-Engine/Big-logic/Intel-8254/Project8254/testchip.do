onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Chip8254/clk0
add wave -noupdate /Chip8254/CS
add wave -noupdate /Chip8254/RD
add wave -noupdate /Chip8254/WR
add wave -noupdate /Chip8254/A0
add wave -noupdate /Chip8254/A1
add wave -noupdate /Chip8254/Data
add wave -noupdate /Chip8254/gate0
add wave -noupdate /Chip8254/out0
add wave -noupdate /Chip8254/c0/count
add wave -noupdate /Chip8254/gate1
add wave -noupdate /Chip8254/out1
add wave -noupdate /Chip8254/c1/count
add wave -noupdate /Chip8254/gate2
add wave -noupdate /Chip8254/out2
add wave -noupdate /Chip8254/c2/count
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {85 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 207
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ns} {922 ns}
force -freeze sim:/Chip8254/clk0 1 0, 0 {50 ps} -r 100
force -freeze sim:/Chip8254/gate0 1'h0 0
force -freeze sim:/Chip8254/gate1 1'h0 0
force -freeze sim:/Chip8254/gate2 1'h0 0
force -freeze sim:/Chip8254/CS 1'h0 0
run
force -freeze sim:/Chip8254/gate0 1'h1 0
force -freeze sim:/Chip8254/RD 1'h1 0
force -freeze sim:/Chip8254/WR 1'h0 0
force -freeze sim:/Chip8254/A0 1'h1 0
force -freeze sim:/Chip8254/A1 1'h1 0
force -freeze sim:/Chip8254/Data 8'b00010000 0
run
force -freeze sim:/Chip8254/WR 1'h1 0
run
force -freeze sim:/Chip8254/WR 1'h0 0
force -freeze sim:/Chip8254/A0 1'h0 0
force -freeze sim:/Chip8254/A1 1'h0 0
force -freeze sim:/Chip8254/Data 8'h5 0
run
force -freeze sim:/Chip8254/WR 1'h1 0
run