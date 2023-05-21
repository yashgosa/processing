// Starfield simulator
// A follow along of the "Coding Challenge 1: Starfield Simulation by Coding Train"
// 21 - 05 - 2023

// THEORY:
/*
  If we look at the graph of the C = a/b the smaller the value of b, greater is C
  if we want our stars to fan out from center towards the edge of screen we will
  be dividing thier x values by a factor(HERE x)
  
  NOTE: ITS NOT THE 3RD DEMENSION!!
  
  As the value of z decreases the value of x and y increases. Hence achiving velocity vector
  
  if we want the stars to look BIGGER when they are CLOSER, then r directly proportional to (x, y)
  
  Since we are diving (x, y) with z and also decrementing z, when z == 0; we reposition the start to 
  a random position
*/


class Star{
  // x, y, z co-ordintes of star
  float x; 
  float y;
  float z;

  // prevous z coordinate
  float pz;
  
  Star(){
    
    // Create a star randomly on the screen
    x = random(- width, width);
    y = random(- height, height);
    z = random(0, width); 
    
    // Assigning the prevous value, as z will change
    pz = z;
  }
    void update(){
      
      // we change z as per the speed
      z = z - speed;
      if (z <= 0){
        // since we divide by z
        x = random(- width, width);
        y = random(- height, height);
        z = random(0, width);
        pz = z;
      }
    }
    
    void show(){
      fill(255);
      //noStroke();
      
      float sx = map(x / z, 0, 1, 0, width); 
      float sy = map(y / z, 0, 1, 0, height);
      
      float r = map(z, 0, width, 0, 1000);
      
      // NOTE: Since the value of (x, y) will not change until they hit the edge ie (z <= 0)
      // we can obtain the stars prevous px, py from pz!
      float px = map(x / pz, 0, 1, 0, width); 
      float py = map(y / pz, 0, 1, 0, height);
      pz = z;
      //ellipse(sx, sy, r, r);
      
      stroke(255, r); // The transparency depends upon z ie, how near the star is
      line(px, py, sx, sy); // Drawing lines from prev to current position
     
      
    }
  }
