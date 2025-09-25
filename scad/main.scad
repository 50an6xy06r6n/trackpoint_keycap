include <params.scad>

use <keycaps.scad>
use <cutout.scad>

// r2_c2
key_cutout([0,-stagger/2*unit,0])
    kat_r2();

// r3_c2_homing
key_cutout([0,unit-stagger/2*unit,0])
    kat_r3_homing();

// r2_c3
key_cutout([unit,stagger/2*unit,0])
    kat_r2();

// r3_c3
key_cutout([unit,unit + stagger/2*unit,0])
    kat_r3();

