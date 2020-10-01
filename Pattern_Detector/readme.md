# Pattern Detector

This is a **Verilog** code for detecting pattern " **0110** " using FSM

## State Table
* Minimum number of states required = 3

| Input |  Present sate | Next state | Output |
|:-----:|:-------------:|:----------:|:------:|
|   1   |       s0      |     s0     |    0   |
|   0   |       s0      |     s1     |    0   |
|       |               |            |        |
|   1   |       s1      |     s2     |    0   |
|   0   |       s1      |     s1     |    0   |
|       |               |            |        |
|   1   |       s2      |     s3     |    0   |
|   0   |       s2      |     s1     |    0   |
|       |               |            |        |
|   1   |       s3      |     s0     |    0   |
|   0   |       s3      |     s1     |    1   |


## Results

>Simulation

![](https://github.com/TheSuryaTeja/RTL-Design/blob/master/Pattern_Detector/Images/Capture.PNG?raw=true)

>Schematic

![](https://github.com/TheSuryaTeja/RTL-Design/blob/master/Pattern_Detector/Images/schematic.PNG?raw=true)

>Post-Synthesis

![](https://github.com/TheSuryaTeja/RTL-Design/blob/master/Pattern_Detector/Images/post-synth.PNG?raw=true)


## Author
* Surya Teja 
* Mail - **heysuryateja@gmail.com**
* Connect on [Linkedin](https://www.linkedin.com/in/suryateja2000/)
