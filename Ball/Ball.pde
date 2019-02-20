PVector location;  // Location of shape
PVector velocity;  // Velocity of shape
PVector gravity;   // Gravity acts at the shape's acceleration

Paddle p; //paddle we move around
Powerup pup; //big powerup the player has to catch
ArrayList<Background> b;
int score; //score of the player

void setup() {
  size(640,600);
  location = new PVector(width/2,height/2); //make the ball spawn in the middle of the screen
  velocity = new PVector(2,2); //x velocity is 2, y-velocity is 2 
  gravity = new PVector(0,0.15);//there is only vertical gravity, so we set the x-value to 0.
  p = new Paddle(); //add the paddle to the scene
  pup = new Powerup(); //add a new powerup to the scene
  b = new ArrayList<Background>(); //initialize the arraylist
  score = 0; //score is initially 0
  
  //add 10 background rectangles with a for loop
  for(int i = 0; i < 10; i++){
     b.add(new Background()); //adding a new background rectangle to the list
  }
  

}

void draw() {
  background(0);
  textSize(20);
  text("Your score is " + score, width/2, 20);
  p.draw(); //draw paddle on the scene
  pup.draw(); //draw powerup on the scene

  for(int i = 0; i < 10; i++){
     b.get(i).draw(); //draw the background rectangles in the list
  }

  // Add velocity to the location.
  location.add(velocity);
  // Add gravity to velocity
  velocity.add(gravity);
  
  // Bounce off edges
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1; 
  }
  
  //add 10 points for the player ball if you hit the powerup
  if((location.x + 48 >= pup.xPos && location.x < pup.xPos + pup.size)
          && (location.y + 48 >= pup.v && location.y <= pup.v + pup.size)){
      pup.v = height + 20; //make the powerup go off the screen so it can respawn
      score += 10;
  }
  
  //add one point each time the players bounces off the platforms
  if((location.x >= p.xPos && location.x <= p.xPos + p.paddleWidth)
          && (location.y >= p.yPos && location.y <= p.yPos + p.paddleHeight)){
      velocity.y = velocity.y * -1; //make the ball bounce off the platform
      score += 1; //add one point to the score
  }
  
  if (location.y > height + 5) { //we are ending the game
     clear();
     fill(#FF90A5);
     textSize(30); 
     text("Your score is " + score, width/2 - 120, height/2);
     stop();
  }

  // Display circle at location vector
  fill(127);
  ellipse(location.x,location.y,48,48);
}
