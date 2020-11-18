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
  }
}
