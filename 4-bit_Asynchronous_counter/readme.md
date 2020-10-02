# 4-bit Asynchronous counter 

This is a **Verilog** code for 4-bit asynchronous counter using T Flip-Flop

## Design

![](https://github.com/TheSuryaTeja/Verilog/blob/master/4-bit_Asynchronous_counter/Images/Counter.jpg?raw=true)

* This is an example picture of asynchronous counter.
* It is called asynchronous because all Flip Flops don’t get same clock.
* The output of T flip flop toggles for every positive edge of clock when t is high. 
  Hence it can be used in counter.
* T flip-flop is instantiated 4 times to design the 4-bit counter.
* As the counter is 4-bit, the simulation can be seen counting from 0 to 15 and wraping around.
* Counter can be reversed (up or down) by inverting the triggering clock edge (posedge clk to negedge clk) or also by making qbar as clock for following flip flops.

## Results

>Simulation

![](https://github.com/TheSuryaTeja/Verilog/blob/master/4-bit_Asynchronous_counter/Images/simulation.PNG?raw=true)

>Schematic

![](https://github.com/TheSuryaTeja/Verilog/blob/master/4-bit_Asynchronous_counter/Images/schematic.PNG?raw=true)

>Post-Synthesis

![](https://github.com/TheSuryaTeja/Verilog/blob/master/4-bit_Asynchronous_counter/Images/post_synth.PNG?raw=true)


## Author
* Surya Teja 
* Mail - **heysuryateja@gmail.com**
* Connect on [Linkedin](https://www.linkedin.com/in/suryateja2000/)
