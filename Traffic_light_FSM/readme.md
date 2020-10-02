# Traffic Light System - FSM 

This is a **Verilog** code for traffic light system using FSM

## State Table
* **Moore State Machine** - Output is only dependent on present state.

| Present State | Next state |    Output    |
|:-------------:|:----------:|:------------:|
|       s0      |     s1     |  Green_light |
|       s1      |     s2     | Yellow_light |
|       s2      |     s0     |   Red_light  |
|     other     |     s0     |   Red_light  |

## Results

>Simulation

![](https://github.com/TheSuryaTeja/RTL-Design/blob/master/Traffic_light_FSM/Images/simulation.PNG?raw=true)

>Schematic

![](https://github.com/TheSuryaTeja/RTL-Design/blob/master/Traffic_light_FSM/Images/schematic.PNG?raw=true)

>Post-Synthesis

![](https://github.com/TheSuryaTeja/RTL-Design/blob/master/Traffic_light_FSM/Images/post-synth.PNG?raw=true)


## Author
* Surya Teja 
* Mail - **heysuryateja@gmail.com**
* Connect on [Linkedin](https://www.linkedin.com/in/suryateja2000/)
