// Starfield simulator
// A follow along of the "Coding Challenge 1: Starfield Simulation by Coding Train"
// 21 - 05 - 2023



float speed;   // We declared an variable speed 
 
Star[] stars = new Star[5000];   // Array declared to control the speed
void setup(){
  size(1000, 1000);   // We setup the size of the canvas
  for (int i = 0; i < stars.length; i++){ // We loop through the array
    stars[i] = new Star();   // We fill Star objects in the array
}
}

void draw(){
  background(0);   // Sets the background color to black
  speed = map(mouseX, 0, width, 0, 20); 
  // 1. takes the X position of the mouse
  // maps 0 ---> 0 and width ----> 20
  
  translate(width/2, height/2);   // translate(read the docs)
  for (int i = 0; i < stars.length; i++){
    stars[i].update();   // Updates the position of the star
    stars[i].show();   // Shows the postion of the star
    
}
}
