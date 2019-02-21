class Background{
   
float v = random(height); //velocity of the moving powerup
float xPos = random(width); //initial x-position of the platform (where it is horizontally)
float w = random(10, 30), h = random(10,30); //set the height and width to something random 

void draw() {
  fill(#2DFA00); //color of the falling background rectangle
  v = v + 3; //rectangles are at medium speed
  if (v > height) { //the rectangle has reached the bottom
  
    //make it spawn back at the top at a random place horizontally
    v = 0; 
    changePosition(); 
  }
  rect(xPos,v,w,h); //makes the background rectangle appear to fall
}

 /*FUNCTION: once the rectangle reaches the bottom of the screen, make it spawn 
  somewhere else*/
 void changePosition(){ 
    xPos = random(width); 
    h = random(10,30); //random rectangle height
    w = random(10, 30); //random rectangle width
    
 }
}
