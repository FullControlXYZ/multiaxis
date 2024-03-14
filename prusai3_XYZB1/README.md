# multiaxis

### follow [this guidance document - UPDATE LINK](https://colab.research.google.com/github/FullControlXYZ/multiaxis/blob/main/prusai3_XYZB1/prusa_4axis_guide_colab.ipynb) to convert a prusi i3 to a 4-axis printer

<center><img src='https://github.com/FullControlXYZ/multiaxis/raw/main/prusai3_XYZB1/Images/overall_image.jpg' width=450></center>

------------------

repo information:

open-source multiaxis 3D printing capabilities developed as part of [FullControl research](https://github.com/FullControlXYZ/fullcontrol) with support from [Duet3D](https://www.duet3d.com/) and undertaken by engineering students (Renush Vigneswaran and Nathanael Hogg) at [Loughborough University](https://www.lboro.ac.uk/)

if you follow the guide, please let us know :) ... email [info@fullcontrol.xyz](mailto:info@fullcontrol.xyz)

5-axis conversions will be released soon

multiaxis toolpath design demos are provided in [FullControl documentation](https://github.com/FullControlXYZ/fullcontrol)

current naming convention (may change in the future):

- X Y Z [i][0/1] [ii][0/1] ...
    - i/ii/... = rotation axes (X=A, Y=B, Z=C)
    - 0/1 indicates whether the stated axis rotates the print-platform/tool respectively
    - axes are listed in the order: X then Y then Z (omit X/Y/Z if not present) then print-platform-rotation axes (0-axes), then tool-rotation axes (1-axes)
        - for multiple directly connected rotation axes, a sequence of parent-child dependency is used: a rotating print-platform (C0) attached onto a tilting stage (A0) would be A0C0 (C is dependent on A)
