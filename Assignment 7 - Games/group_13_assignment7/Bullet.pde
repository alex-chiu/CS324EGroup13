class Bullet{
  float x, y, radius;
  color c;
  float movespeed;
  boolean visible, enemy;
  PImage img = loadImage("laser.png");
  
  // Constructor
  Bullet(float _x, float _y, float _r, color _c, float _ms) {
    x = _x;
    y = _y;
    radius = _r;
    c = _c;
    movespeed = _ms;
    visible = true;
    img.resize(10, 20);
    enemy = false;
  }
  
  // Draws Bullet
  void display() {
    if (visible) {
      if (enemy) {
        tint(120, 0, 0);
      }
      else {
        tint(0, 120, 0);
      }
      imageMode(CENTER);
      image(img, x, y);
    }
    tint(255, 255, 255);
  }
  
  // Updates Position
  void update(){
    y -= 10;
  }
  
  // Updates Enemy
  void enemyUpdate(){
    y += movespeed;
  }
}
