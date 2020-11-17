class Enemy {
  float x = 350;
  float y = 400;
  float velX = 0;
  float velY = 0;
  float movespeed = 0.25;
  float size = 50;
  color c;
  PImage img = loadImage("enemy.png");
  
  // Constructor
  Enemy(float x, float y, float velX, float velY, float movespeed, float size, color c){
    this.x = x; this.y = y; this.velX = velX; 
    this.velY = velY; this.movespeed = movespeed; this.size = size;
    this.c = c;
    img.resize(50, 50);
  }
  
  // Draws Enemy
  void display() {
    imageMode(CORNER);
    image(img, x, y);
  }

  // Moves Enemy
  void move() {
    y += movespeed;
  }
}
