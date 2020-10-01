# LIFO Buffer System

This is a **Verilog** code for LIFO buffer system which can store 5 numbers of 4bit each

## Design

* LIFO stands for *Last In First Out*
* Thumb rule to design a LIFO is 
   " **don't read from empty buffer and don’t write to full buffer.** "
* LIFO buffer memory of depth 5 with each word 4-bit wide.
* Read and write to LIFO according to full and empty flags.
* case is preferred instead of if-else because if-else will generate parity encoder type logic and cause timing issues.


## Results

>Simulation

![](https://github.com/TheSuryaTeja/Verilog/blob/master/LIFO/Images/simulation.PNG?raw=true)

>Schematic

![](https://github.com/TheSuryaTeja/Verilog/blob/master/LIFO/Images/schematic.PNG?raw=true)

>Post-Synthesis

![](https://github.com/TheSuryaTeja/Verilog/blob/master/LIFO/Images/post-synth.PNG?raw=true)


## Author
* Surya Teja 
* Mail - **heysuryateja@gmail.com**
* Connect on [Linkedin](https://www.linkedin.com/in/suryateja2000/)
