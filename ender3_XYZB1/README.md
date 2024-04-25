
follow the **[PRUSA_i3 GUIDANCE DOCUMENT](https://colab.research.google.com/github/FullControlXYZ/multiaxis/blob/main/prusai3_XYZB1/prusa_4axis_guide_colab.ipynb)** as much as possible

changes from that document:
- print stl files from [here](https://github.com/FullControlXYZ/multiaxis/tree/main/ender3_XYZB1/CAD) instead of the three prusa brackets
    - these are untested and may need minor modifications (step files are [here](https://github.com/FullControlXYZ/multiaxis/tree/main/ender3_XYZB1/CAD/STEP)) - please give feedback and help develop this work!
- you no longer need the Duet 3 Mini 2+ expansion board since there is only one Z-axis motor (it is required for the prusa because it has two Z motors)
    - note: you may wish to use one anyway, to be able to update to 5-axis in the future
- minor changes to wiring
    - this [ender 3 pro guidance doc](https://docs.duet3d.com/How_to_guides/e3p_Mini5+_guide_part1_wiring) may be a useful reference
- minor changes to config file (only one motor for Z axis)
- anything else? let us know!


email: [info@fullcontrol.xyz](mailto:info@fullcontrol.xyz)