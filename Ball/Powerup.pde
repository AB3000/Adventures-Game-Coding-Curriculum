class Powerup{
   
float v = random(height); //velocity of the moving powerup
float xPos = random(width); //initial x-position of the powerup (where it is horizontally)
float size = 70; //size of the square

void draw() {
  fill(#CE39E3);
  v = v + 4; //powerup is at medium speed
  if (v > height) { //if has reached the bottom
    //move the powerup back to the top and set it to a random horizontal place
    v = 0; 
    changePosition(); 
  }
  square(xPos, v, size); //draw the falling powerup 
}

 /*once the platform reaches the top of the screen, make it spawn 
  somewhere else*/
 void changePosition(){  
    xPos = random(width);
 }
}
