module t(x1,x2,width,h1,h2){
    union(){
        translate([0,0,(h2)/2]){
            cube([x1,width,h1-h2],center=true);
        }
        cube([x2,width,h1],center=true);
    }
};

module hanger(bordureWidth = 5){
    difference(){
        t(42+bordureWidth*2,12+bordureWidth*2,40,40+bordureWidth,27);
        translate([0,0,5/2]){
            t(42,12,40+0.5,40+0.1,27);
        }
    }
}

cube(size=[3,40,72], center = true);
translate([(42+5*2)/2,0,0]){
    hanger(5);
}