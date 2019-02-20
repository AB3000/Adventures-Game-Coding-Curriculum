class Background{
   
float v = random(height); //velocity of the moving powerup
float xPos = random(width); //initial x-position of the platform (where it is horizontally)
float w = random(10, 30), h = random(10,30); //set the height and width to something random 

void draw() {
  fill(#2DFA00); //color of the falling background rectangles
  v = v + 3; //powerup is at medium speed
  if (v > height) { 
    v = 0; 
    changePosition();
  }
  rect(xPos,v,w,h);
}

 /*once the platform reaches the top of the screen, make it spawn 
  somewhere else*/
 void changePosition(){ 
    xPos = random(width); 
    h = random(10,30);
    w = random(10, 30);
    
    
 }
}
