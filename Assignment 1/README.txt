To run the test bench file please add the following line in the cmd pannel of VS code editor.

	iverilog -o <testbench file name>.vvp <testbench file name>.v

then add the following line

	vvp <testbench file name>.vvp

then the output would be displayed.
If you want to see the gtkwave simply type following in the cmd pannel. 

	gtkwave

For eg. for running Question 3, one should write following commands on cmd line,
	iverilog -o main_tb.vvp main_tb.v
	vvp main_tb.vvp
	gtkwave


Thank You.
