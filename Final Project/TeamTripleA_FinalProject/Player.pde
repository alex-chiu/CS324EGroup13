class Player {
  float x, y, velX, velY, ms;
  PImage ship = loadImage("spaceship.png");
  
  // Constructor
  Player (float _x, float _y) {
    x = _x;
    y = _y;
    velX = 0;
    velY = 0;
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
    x += velX;
    y += velY;
  }
}
