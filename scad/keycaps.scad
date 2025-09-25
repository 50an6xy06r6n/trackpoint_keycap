use <stem.scad>

module kat_r1() {
    replace_stem(8)
    import("../stl/kat_1u_r1.stl", convexity=10);
}

module kat_r2() {
    replace_stem(8)
    import("../stl/kat_1u_r2.stl", convexity=10);
}

module kat_r3() {
    replace_stem(8)
    import("../stl/kat_1u_r3.stl", convexity=10);
}

module kat_r3_homing() {
    replace_stem(8)
    import("../stl/kat_1u_r3_homing.stl", convexity=10);
}

module kat_r4() {
    replace_stem(8)
    import("../stl/kat_1u_r4.stl", convexity=10);
}

module kat_r5() {
    replace_stem(8)
    import("../stl/kat_1u_r5.stl", convexity=10);
}

module kat_r6() {
    replace_stem(8)
    import("../stl/kat_1u_r6.stl", convexity=10);
}
