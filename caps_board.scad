// the point of this file is to be a sort of DSL for constructing keycaps.
// when you create a method chain you are just changing the parameters
// key.scad uses, it doesn't generate anything itself until the end. This
// lets it remain easy to use key.scad like before (except without key profiles)
// without having to rely on this file. Unfortunately that means setting tons of
// special variables, but that's a limitation of SCAD we have to work around

include <./includes.scad>

// set viewport  
$vpt = [ 154.60, -47.12, 10.00 ];
$vpr = [ 38.20, 0.00, 6.10 ];
$vpd = 446.13;

// clear the legends so we can override them later
60_percent_legends = [];

// override colors
$primary_color = [.2667,.5882,1];
$secondary_color = [.4078, .3569, .749];
$tertiary_color = [1, .6941, .2];
$quaternary_color = [.4412, .7, .3784];
$warning_color = [1,0,0, 0.15];

// layout a keyboard of caps keys
    60_percent_default("dcs")
    legend("CAPS", size=3, position=[0,-0.5])
    legend("LOCK", size=3, position=[-0,0.5])
key(); 
