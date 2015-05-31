module wallHanger(width, height, thin){
    cube(size=[thin,width,height], center = true);
}

module gunHanger(width, height, thin,diff,deltax=4,deltaz=4){
    difference(){
        cube(size=[thin+diff,width,height+diff/2],center=true);        
        translate([0,0,diff/4]){
            polyhedron
    (points = [
	       [-thin/2+deltax, -(width+1)/2, -(height+1)/2], [-thin/2+deltax, (width+1)/2, -(height+1)/2],[thin/2-deltax, -(width+1)/2, -(height+1)/2],[thin/2-deltax, (width+1)/2, -(height+1)/2],[-thin/2, -(width+1)/2, (height+1)/2], [-thin/2, (width+1)/2, (height+1)/2],[thin/2, -(width+1)/2, (height+1)/2],[thin/2, (width+1)/2, (height+1)/2],
        
        [-thin/2, -(width+1)/2, -(height+1)/2+deltaz], [-thin/2, (width+1)/2, -(height+1)/2+deltaz],[thin/2, -(width+1)/2, -(height+1)/2+deltaz],[thin/2, (width+1)/2, -(height+1)/2+deltaz]
	       ], 
     faces = [
		  [1,0,2],
        [1,2,3],
        [4,5,6],
        [6,5,7],
        [8,4,6],
        [10,8,6],
        [5,9,7],
        [9,11,7],
        [9,5,4],
        [8,9,4],  
        [10,6,11],
        [6,7,11],
        [0,1,8],
        [8,1,9],
        [3,2,10],
        [10,11,3],
        [0,8,2],
        [2,8,10],
        [1,3,9],  
        [9,3,11]
		  ]);
      }
    }
}

diff = 12;
height = 40+diff;
width = 40;
thin=12*2+30;
wallHanger(width,height+20,3);
translate([(thin+diff)/2,0,0]){
    gunHanger(width,height,thin,diff);
}
