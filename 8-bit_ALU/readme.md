# 8-bit Signed ALU

This is a behavioural **Verilog** code for 8-bit signed ALU

## ALU Design

Supports Addition, Subtraction, Multiplication, Division, 
Left-shift and Right-shift

## Ports
* Inputs

   8-bit inputs *"a"* and *"b"*, **MSB** is sign bit

   3-bit *"Sel"* to for operation selection

```
sel  =  3’d0 	-> 	Addition
sel  =  3’d1 	-> 	Subtraction	
sel  =  3’d2 	->	Multiplication
sel  =  3’d3 	-> 	Division
sel  =  3’d4 	-> 	Left shift of a by 1
sel  =  3’d5 	-> 	Right shift of a by 1
sel  =  other 	->	Output is zero

```
* Output

   8-bit output *"c"*, **MSB** is sign bit

## Full Design

* A  top wrapper is made for bram and the ALU instantiation
* Test stimulus is given from test bench and Output of ALU is stored in bram

## Results

![](https://github.com/TheSuryaTeja/RTL-Design/blob/master/8-bit_ALU/Simulation_waveforms/ALU_Simulation.PNG?raw=true)


## Author
* Surya Teja 
* Mail - **heysuryateja@gmail.com**
* Connect on [Linkedin](https://www.linkedin.com/in/suryateja2000/)
