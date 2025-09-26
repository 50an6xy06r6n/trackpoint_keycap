include <params.scad>

module key_cutout(translation) {
    render()
    difference() {
        union() {
            translate(offset+translation)
                children(0);
                
            // Added wall
            intersection() {
                translate(offset+translation)
                hull()
                    children(0);
                tunnel_wall();
            }
        }
        
        tunnel_cutout();    
    }
}

module tunnel_wall() {
    cylinder(
        tunnel_wall_height,
        d1=tunnel_d1 + wall_thickness*2,
        // normalized to match draft angle
        d2=tunnel_d2 * tunnel_wall_height / tunnel_height + wall_thickness*2,
        $fn=360,
    );
}

module tunnel_cutout() {
    translate([0,0,-0.1])
    cylinder(
        tunnel_height,
        d1=tunnel_d1,
        d2=tunnel_d2,
        $fn=360,
    );
}

