class Bullet {
  float x, y;
  float movespeed;
  boolean visible, enemy;
  PImage img = loadImage("laser.png");
  
  // Constructor
  Bullet(float _x, float _y, float _ms, boolean _enemy) {
    x = _x;
    y = _y;
    movespeed = _ms;
    enemy = _enemy;
    
    visible = true;
    img.resize(10, 20);
  }
  
  // Draws Bullet
  void display() {
    if (visible) {
      if (enemy) {
        tint(120, 0, 0);
      }
      else {
        tint(0, 120, 120);
      }
      imageMode(CENTER);
      image(img, x, y);
    }
    tint(255, 255, 255);
  }
  
  // Updates Position
  void move() {
    y += movespeed;
  }
}
