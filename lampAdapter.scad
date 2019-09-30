shoulderH=3;
shoulderR=12;
plugDepth=25;
plugBoreR=6.25;
poke=.004;  // poke-through value
$fn=64;

difference() {
    union() {
        cylinder(h=shoulderH, r=shoulderR, center=false);
        translate([0,0,shoulderH]) {
            cylinder(h=plugDepth, r1=9.1, r2=8.5, center=false);
        }
    }
    translate([0,0,-poke]) {  // start slightly below intersecting solid
        // poke through, height of should, plug depth, poke through other end
        cylinder(h=poke+shoulderH+plugDepth+poke, r=plugBoreR, center=false);
    }
}
