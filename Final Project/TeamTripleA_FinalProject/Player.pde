class Player {
  float x, y, vx, vy, ms;
  PImage ship = loadImage("spaceship.png");
  
  // Constructor
  Player (float _x, float _y) {
    x = _x;
    y = _y;
    vx = 0;
    vy = 0;
    ms = 5;
    ship.resize(50, 50);
  }
  
  // Draws Player Ship
  void display() {
    imageMode(CENTER);
    image(ship, x, y);
  }
  
  // Moves Ship
  void move() {
    x += vx;
    y += vy;
    
    if (x <= 25) {
      x = 25;
    }
    else if (x >= width - 25) {
      x = width - 25;
    }
    if (y <= 25) {
      y = 25; 
    }
    else if (y >= height - 25) {
      y = height - 25;
    }
  }
}
