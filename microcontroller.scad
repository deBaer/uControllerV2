module roundedBox(size, radius, sidesonly) {
  rot = [ [0,0,0], [90,0,90], [90,90,0] ];
  if (sidesonly) {
    cube(size - [2*radius,0,0], true);
    cube(size - [0,2*radius,0], true);
    for (x = [radius-size[0]/2, -radius+size[0]/2],
           y = [radius-size[1]/2, -radius+size[1]/2]) {
      translate([x,y,0]) cylinder(r=radius, h=size[2], center=true);
    }
  }
  else {
    cube([size[0], size[1]-radius*2, size[2]-radius*2], center=true);
    cube([size[0]-radius*2, size[1], size[2]-radius*2], center=true);
    cube([size[0]-radius*2, size[1]-radius*2, size[2]], center=true);

    for (axis = [0:2]) {
      for (x = [radius-size[axis]/2, -radius+size[axis]/2],
             y = [radius-size[(axis+1)%3]/2, -radius+size[(axis+1)%3]/2]) {
        rotate(rot[axis])
          translate([x,y,0])
          cylinder(h=size[(axis+2)%3]-2*radius, r=radius, center=true);
      }
    }
    for (x = [radius-size[0]/2, -radius+size[0]/2],
           y = [radius-size[1]/2, -radius+size[1]/2],
           z = [radius-size[2]/2, -radius+size[2]/2]) {
      translate([x,y,z]) sphere(radius);
    }
  }
}

if (true) {
    difference() {
      // Case 
      translate([100,47.5,20])
        roundedBox([203,98,43],3,$fn=24);
      translate([-2,-2,38.5])
        cube([205,99,3]);
      translate([1.5,1.5,1.5])
        cube([197,92,39]);
      // Joystick
      translate([33,39,-1.5])
        cylinder(h=3,d=23);
      translate([49,39,-1.5])
        cylinder(h=3,d1=8,d2=4);
      translate([17,39,-1.5])
        cylinder(h=3,d1=8,d2=4);
      translate([33,23,-1.5])
        cylinder(h=3,d1=8,d2=4);
      translate([33,55,-1.5])
        cylinder(h=3,d1=8,d2=4);
      translate([25,0.5,1.5])
        cube([15,1,5]);
      // Top buttons
      translate([117,34.5,-1.5])
        cylinder(h=3,d=31);
      translate([117,69,-1.5])
        cylinder(h=3,d=31);
      translate([147.5,18,-1.5])
        cylinder(h=3,d=31);
      translate([147.5,52.5,-1.5])
        cylinder(h=3,d=31);
      translate([182,18,-1.5])
        cylinder(h=3,d=31);
      translate([182,52.5,-1.5])
        cylinder(h=3,d=31);
      // Controller
      translate([68.5,11,-1.5])
        cylinder(h=3,d1=8,d2=4);
      translate([98.5,11,-1.5])
        cylinder(h=3,d1=8,d2=4);
      translate([68.5,91,-1.5])
        cylinder(h=3,d1=8,d2=4);
      translate([98.5,91,-1.5])
        cylinder(h=3,d1=8,d2=4);
      translate([77,-1.5,5])
        cube([13,5,12]);
      // Front buttons
      translate([147.5,96.5,20])
        rotate([90,0,0])
          cylinder(h=3,d=31.5);  
      translate([182,96.5,20])
        rotate([90,0,0])
          cylinder(h=3,d=31.5);  
      translate([15,96.5,20])
        rotate([90,0,0])
          cylinder(h=3,d=24.5);  
      translate([43,96.5,20])
        rotate([90,0,0])
          cylinder(h=3,d=24.5);  
      // Fastening
      translate([6.5,-1.5,34])
        rotate([-90,0,0])
          cylinder(h=3,d1=8,d2=4);
      translate([193.5,-1.5,34])
        rotate([-90,0,0])
          cylinder(h=3,d1=8,d2=4);
      translate([-1.5,65,34])
        rotate([0,90,0])
          cylinder(h=3,d1=8,d2=4);
      translate([201.5,65,34])
        rotate([0,-90,0])
          cylinder(h=3,d1=8,d2=4);
      translate([115,96.5,34])
        rotate([90,0,0])
          cylinder(h=3,d1=8,d2=4);

    }
    
    // Support
    translate([68.5,11,1.5])
      difference() {
        cylinder(h=2,d=6);
        cylinder(h=2,d=4);
    }
    translate([98.5,11,1.5])
      difference() {
        cylinder(h=2,d=6);
        cylinder(h=2,d=4);
    }
    translate([68.5,91,1.5])
      difference() {
        cylinder(h=2,d=6);
        cylinder(h=2,d=4);
    }
    translate([98.5,91,1.5])
      difference() {
        cylinder(h=2,d=6);
        cylinder(h=2,d=4);
    }

}

if (false) {
  translate([0,95,40])
    rotate([0,180,180]) {
    
difference() {
  // Case 
  translate([100,47.5,20])
    roundedBox([203,98,43],3,$fn=24);
  translate([-2,-2,1.5])
    cube([205,99,41]);
}    

translate([110,1.5,1.5])
  difference() {
      cube(10);
      translate([2.1,5,1])
        cube([5.8,2.7,10]);
      translate([5,0,4.6])
        rotate([-90,0,0])
          cylinder(h=10,d=3.4,$fn=12);
  }    
translate([1.5,83.5,1.5])
  difference() {
      cube(10);
      translate([2.1,2.3,1])
        cube([5.8,2.7,10]);
      translate([5,0,4.6])
        rotate([-90,0,0])
          cylinder(h=10,d=3.4,$fn=12);
  }
translate([11.5,25,1.5]) rotate([0,0,90])
  difference() {
      cube(10);
      translate([2.1,2.3,1])
        cube([5.8,2.7,10]);
      translate([5,0,4.6])
        rotate([-90,0,0])
          cylinder(h=10,d=3.4,$fn=12);
  }
translate([188.5,83.5,1.5])
  difference() {
      cube(10);
      translate([2.1,2.5,1])
        cube([5.8,2.7,10]);
      translate([5,0,4.6])
        rotate([-90,0,0])
          cylinder(h=10,d=3.4,$fn=12);
  }
translate([188.5,35,1.5]) rotate([0,0,-90])
  difference() {
      cube(10);
      translate([2.1,2.5,1])
        cube([5.8,2.7,10]);
      translate([5,0,4.6])
        rotate([-90,0,0])
          cylinder(h=10,d=3.4,$fn=12);
  }
    }
}