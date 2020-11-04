import java.util.ArrayList;

Ball[] balls;
ArrayList<Obstacle> obstacles;
Obstacle o1, o2, o3;
color c2 = color(0, 0, 0);

boolean restartSim = true;

void setup() {
  size(600, 600); 
  
  // Create new balls
  balls = new Ball[10];
  
  // Create obstacles
  o1 = new Obstacle(0, 75, 150, 25, c2);
  o2 = new Obstacle(450, 150, 150, 25, c2);
  o3 = new Obstacle(100, 450, 400, 25, c2);
}

void draw() {
  background(255);
  
  if (restartSim) {
    restartSim = false; 
    for (int i = 0; i < balls.length; i++) {
      balls[i] = new Ball(random(25, 575), 25, 10, random(5, 10), color(random(0, 200)));
      balls[i].vx = random(-10, 10);
    }
    obstacles = new ArrayList<Obstacle>();
    obstacles.add(o1);
    obstacles.add(o2);
    obstacles.add(o3);
  }
 
  for (int i = 0; i < balls.length; i++) {
    balls[i].resetAccel();
    balls[i].applyForce(0, 0.75 * balls[i].m);
    balls[i].checkBounds();
    
    for (int on = 0; on < obstacles.size(); on++) {
      balls[i].checkCollideObstacle(obstacles.get(on));
    }
    
    for (int j = 0; j < i; j++) {
       balls[i].checkCollideBall(balls[j]);
    }
    
    balls[i].propagate();
    balls[i].display();
  }
  
  for (int i = 0; i < obstacles.size(); i++) {
    obstacles.get(i).display();
  }
}

void keyPressed() {
  if (key == 'r') {
    restartSim = true;
  }
}

void mousePressed() {
  if (mouseX >= 12.5 && mouseX <= 587.5 && mouseY >= 12.5 && mouseY <= 587.5) {
    Obstacle o = new Obstacle(mouseX - 12.5, mouseY - 12.5, 25, 25, c2);
    obstacles.add(o);
  }
}
