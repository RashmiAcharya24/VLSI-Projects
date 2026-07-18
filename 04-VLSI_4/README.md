# VLSI_4


4:1 MUX using Assign :- 
A 4-to-1 multiplexer implemented using continuous assignment statements. It selects one of four input lines (i0, i1, i2, i3) based on the value of the 2-bit select line (s). The selected input is then routed to the output (y).

4:1 MUX using Always :-
A 4-to-1 multiplexer implemented using a procedural always block. It also selects one of four input lines (i0, i1, i2, i3) based on the value of the 2-bit select line (s). The always block updates the output (y) whenever the select lines or inputs change.

Program Counter (PC) :-
In This Verilog code implements a Program Counter (PC) module with a testbench. The PC module has asynchronous reset and write enable functionality, allowing it to be reset to 0 or loaded with a new value (pc_in) when the write enable (pwen) is high. The testbench verifies the PC module's behavior by applying reset and write enable signals, and dumping the waveforms for further analysis.
