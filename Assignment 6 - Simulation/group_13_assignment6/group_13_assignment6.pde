import java.util.ArrayList;

// Global variables
Ball[] balls;
ArrayList<Obstacle> obstacles;
Obstacle o1, o2;
MovingObstacle o3;
color c2 = color(0, 0, 0);
boolean restartSim = true;

void setup() {
  size(600, 600); 
  
  // Create new balls
  balls = new Ball[10];
  
  // Create default obstacles
  o1 = new Obstacle(0, 75, 150, 25, c2);
  o2 = new Obstacle(450, 150, 150, 25, c2);
  o3 = new MovingObstacle(100, 450, 400, 25, c2);
}

void draw() {
  background(255);
  
  // Resets obstacles and balls when simulation is restarted
  if (restartSim) {
    restartSim = false; 
    
    // Randomly generates balls 
    for (int i = 0; i < balls.length; i++) {
      balls[i] = new Ball(random(25, 575), 25, 10, random(5, 10), color(random(0, 200)));
      balls[i].vx = random(-10, 10);
    }
    
    // Resets obstacle arraylist
    obstacles = new ArrayList<Obstacle>();
    obstacles.add(o1);
    obstacles.add(o2);
    obstacles.add(o3);
    
    o3.vx = 5;
  }
 
  // Loops through each ball
  for (int i = 0; i < balls.length; i++) {
    // Resets acceleration, applies gravity, and checks boundary collision
    balls[i].resetAccel();
    balls[i].applyForce(0, 0.75 * balls[i].m);
    balls[i].checkBounds();
    
    // Checks collisions between balls and obstacles
    for (int on = 0; on < obstacles.size(); on++) {
      balls[i].checkCollideObstacle(obstacles.get(on));
    }
    
    // Checks collisions between balls
    for (int j = 0; j < i; j++) {
       balls[i].checkCollideBall(balls[j]);
    }
    
    // Propagates each ball's position/velocity
    balls[i].propagate();
    
    // Draws the balls
    balls[i].display();
  }
  
  if (o3.x + o3.l >= width || o3.x <= 0) {
        o3.vx *= -1;
      }
      o3.propagateObs();
  
  // Draws the obstacles
  for (int i = 0; i < obstacles.size(); i++) {
    obstacles.get(i).display();
  }
}

// Restarts simulation when R is pressed
void keyPressed() {
  if (key == 'r') {
    restartSim = true;
  }
}

// Generates a new obstacle wherever the user clicks
void mousePressed() {
  if (mouseX >= 12.5 && mouseX <= 587.5 && mouseY >= 12.5 && mouseY <= 587.5) {
    Obstacle o = new Obstacle(mouseX - 12.5, mouseY - 12.5, 25, 25, c2);
    obstacles.add(o);
  }
}
