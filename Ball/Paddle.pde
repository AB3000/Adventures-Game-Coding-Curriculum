class Paddle{
int xPos = width/2; //start the paddle at the middle of the screen
int yPos = height - 20; //paddle will be slightly above the bottom of the screen
int paddleWidth = 70; //how long the paddle is 
int paddleHeight = 10; //how thick the paddle is

void draw() {
  fill(#059859); //color of paddle
  rect(xPos, yPos, paddleWidth, paddleHeight); //draw the paddle
 
  if(keyCode == RIGHT){ //paddle keeps moving to the right once key is pressed
    xPos += 5; //can increase or decrease for speed
  }
  if(keyCode == LEFT){ //paddle keeps moving to the left once key is pressed
    xPos -= 5; //can increase or decrease for speed
  }
  
  /*if near right edge, we subtract paddleWidth from the whole width of the screen
    because the rectangle coordinates are drawn from the topleft*/
  if (xPos > (width - paddleWidth)) { 
     xPos -= 5; //push back left
  }
  
  //if near left edge
  if(xPos < 0){ 
    xPos +=5; //push back right
  }
  
 }
}
