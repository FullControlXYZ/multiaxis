guidance for this is upcoming, but it's very simple... 

- reorient the 5th axis so the rotation happens about X instead of Z - good for printing on a mandrel or other parts
- maybe no modifications to config.g (to be confirmed) - all inverse kinematics are handled by FullControl
- change the manual homing routine (set all axes to the zero when the nozzle tip is in line with the mandrel axis, at a logical X)
- change settings used in FullControl for inverse kinematics