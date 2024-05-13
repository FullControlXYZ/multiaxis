
follow the **[PRUSA_i3 GUIDANCE DOCUMENT](https://colab.research.google.com/github/FullControlXYZ/multiaxis/blob/main/prusai3_XYZB1/prusa_4axis_guide_colab.ipynb)** as much as possible

changes from that document:
- print stl files from [here](https://github.com/FullControlXYZ/multiaxis/tree/main/taz5_XYZB1_dual/CAD)
    - (step files are [here](https://github.com/FullControlXYZ/multiaxis/tree/main/taz5_XYZB1_dual/CAD/STEP)) - adjust them for the geometry of the extruders you use
- different re-wiring procedure
    - this [duet wiring doc](https://github.com/FullControlXYZ/multiaxis/tree/main/taz5_XYZB1_dual/Duet%20Wiring) is a useful reference
    - also check duet guidance doc ([example](https://docs.duet3d.com/How_to_guides/e3p_Mini5+_guide_part1_wiring))
- changes to duet configuration files - [updated version available here](https://github.com/FullControlXYZ/multiaxis/tree/main/taz5_XYZB1_dual/Config%20Files)
- an example fullcontrol design is [here](https://colab.research.google.com/github/FullControlXYZ/multiaxis/blob/main/taz5_XYZB1_dual/demo.ipynb)
- we used a [100:1 gearbox-motor combo](https://www.active-robots.com/3322-0-28sth32-nema-11-bipolar-stepper-with-100-1.html?amp=1), more precise than 27:1, but this meant we needed backlash compensation in the toolpath
- anything else? let us know!


email: [info@fullcontrol.xyz](mailto:info@fullcontrol.xyz)
