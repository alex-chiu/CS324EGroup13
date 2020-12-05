class Enemy {
  float x, y, vx, vy;
  boolean alive;
  PImage enemy = loadImage("enemy.png");
  
  // Bullets
  ArrayList<Bullet> enemy_bullets = new ArrayList<Bullet>();
  
  // Constructor
  Enemy(float _x, float _y, float _vx, float _vy) {
    x = _x;
    y = _y;
    vx = _vx;
    vy = _vy;
    alive = true;
    
    enemy.resize(50, 50);
  }
  
  // Draws Enemy
  void display() {
    if (alive) {
      imageMode(CENTER);
      image(enemy, x, y);
    }
  }
  
  // Moves Enemy
  void move() {
    x += vx;
    y += vy;
    
    if (x <= 25) {
      x = 25;
      vx = -vx;
    }
    else if (x >= width - 25) {
      x = width - 25;
      vx = -vx;
    }
  }
  
  // Checks Bullet Collision
  boolean checkBulletCollision(Bullet b) {
    if ((b.x - 5 <= x + 25) && (b.x + 5 >= x - 25) && (b.y - 10 <= y + 25) && (b.y + 10 >= y - 25)) {
      alive = false;
      return true;
    }
    else {
      return false; 
    }
  }
  
  // Checks Player Collision
  boolean checkPlayerCollision(Player p) {
    if ((p.x - 25 <= x + 25) && (p.x + 25 >= x - 25) && (p.y - 25 <= y + 25) && (p.y + 25 >= y - 25)) {
      alive = false;
      return true;
    }
    else {
      return false;
    }
  }
}
