follow the **[PRUSA_i3 GUIDANCE DOCUMENT](https://colab.research.google.com/github/FullControlXYZ/multiaxis/blob/main/prusai3_XYZB1/prusa_4axis_guide_colab.ipynb)** with the following additions:


- print the additional stl files from [here](https://github.com/FullControlXYZ/multiaxis/tree/main/prusai3_XYZB1C0/CAD)
- wire in the new motor ('C' in this image):
    <center><img src='https://github.com/FullControlXYZ/multiaxis/raw/main/prusai3_XYZB1C0/Duet%20Wiring/Circuit%20Diagram.png' width=450></center>
- implement minor changes to config file described in the 'Changes to config' section below (updated config file available [here](https://github.com/FullControlXYZ/multiaxis/blob/main/prusai3_XYZB1C0/prusai3_XYZB1C0/Config%20Files/))
- Follow the '5-axis manual homing routine' instructions below
- anything missing from these instructions? let us know! [info@fullcontrol.xyz](mailto:info@fullcontrol.xyz)

## Changes to config:

By utilising the same motor as the 4th axis, the method to add any additional axis in any orientation requires very few changes to config.g:
- Define the extra drive and update the mapping command in the “ ##### Drives” section (changes highlighted in bold): 
    - **M569 P6 S0 D3 V10 		        ; C drive @6**
    - M584 X1 Y2 Z0:4 E3 B5 **C6**                            ; set drive mapping
- Set motor parameters (changes highlighted in bold): 
    - M350 X16 Y16 Z16 E16 B16 **C16** I1  ; configure microstepping with interpolation
    - M92 X100.00 Y100.00 Z400.00 E140.00 B238.6776859 **C238.6776859**    ; set steps per mm 
    - M566 X600.00 Y600.00 Z48.00 E300.00 B480 **C480**      ; set maximum instantaneous speed changes (mm/min)
    - M203 X8000.00 Y8000.00 Z720.00 E7200.00 B5000.00 **C5000.00**    ; set maximum speeds (mm/min)
    - M201 X1250.00 Y1250.00 Z1250.00 E2000.00 B1000.00 **C1000.00** ; set accelerations (mm/s^2)
    - M906 X750 Y750 Z600 E700 B600 **C600** I30                  ; set motor currents (mA) and motor idle factor in per cent
- Update the axis limits:
    - Original (4-axis):
        - M208 X0:200 Y0:210 Z0:200 B-90:90             ; set axis minima and maxima
    - Updated:
        - **M208 X-100:100 Y-105:105 Z-50:40 B-90:90 C-999999:999999**             ; set axis minima and maxima

## 5-axis manual homing routine:

Manually home axes (to be automated in the future):
1. Place 5th axis motor bracket on the print bed :
    - Whilst this could be anywhere on the print bed, depending on the design, it is recommended to leave at centre (The axes limits have been set assuming central position)

1. Home B:
    - Use Duet Web Control to jog B until nozzle points directly down 

1. Position Nozzle to be at the centre of the rotating bed (an indentation is designed into bed to clearly indicate centre):
    - Use Duet Web Control to jog X, Y and Z until the nozzle pinches paper at the centre of the bed.
    - Note down X Y (anmd maybe Z) values to easily move to this position for subsequent homing.


1.	Set home for all axis: G92 Z0 X0 Y0 B0 C0 

1. Begin printing, following these steps:
    1.	Click T0 in duet web control and set nozzle temperature and bed temperature
    1.	Load gcode file (without start/end-procedures except M82/M83) onto printer
    1.	Run gcode file (use very slow speeds if you have no cooling fan)

    <center><img src='https://github.com/FullControlXYZ/multiaxis/raw/main/prusai3_XYZB1C0/Homing%20Photos/1.jpeg' width=200> <img src='https://github.com/FullControlXYZ/multiaxis/raw/main/prusai3_XYZB1C0/Homing%20Photos/3.1.jpeg' width=200></center>