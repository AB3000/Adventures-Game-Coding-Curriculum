class Powerup{
   
float v = random(height); //velocity of the moving powerup
float xPos = random(width); //initial x-position of the platform (where it is horizontally)
float size = 70; //size of the square

void draw() {
  fill(#CE39E3);
  v = v + 3; //powerup is at medium speed
  if (v > height) { 
    v = 0; 
    changePosition();
  }
  square(xPos, v, size);
}

 /*once the platform reaches the top of the screen, make it spawn 
  somewhere else*/
 void changePosition(){ 
    xPos = random(width);
 }
}
