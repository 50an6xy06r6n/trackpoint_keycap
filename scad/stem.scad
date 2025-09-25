cross_h_thickness = 1.3;
cross_v_thickness = 1.1;
cross_width = 4.2;
stem_d = 5.8;

stem_margin = 0.05;

module stem_body(height) {
    cylinder(height,d=stem_d,$fn=360);
}

module stem_profile() {
    union() {
        square([cross_width,cross_h_thickness+stem_margin], center=true);
        square([cross_v_thickness+stem_margin,cross_width], center=true);
    }
}

module stem_cutout(height) {
    union() {
        linear_extrude(height)
        stem_profile();

        roof("straight")
        offset(delta=0.25)
        stem_profile();
    }
}

module replace_stem(height) {
    difference() {
        union() {
            children(0);
            stem_body(height);
        }

        stem_cutout(height);
    }
}
