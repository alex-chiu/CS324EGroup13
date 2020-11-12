float upKey;
float downKey;
float rightKey;
float leftKey;
boolean bulletFired = false;
boolean isPaused = false;
boolean hitEnemy1, hitEnemy2, hitEnemy3, hitEnemy4, hitEnemy5;
int numEnemiesKilled = 0;
Bullet bullet;
Player player;
Enemy enemy1, enemy2, enemy3, enemy4, enemy5;
GUI gui;

void setup()
{
  size(800, 600);
  player = new Player(350, 400, 0, 0, 5, 50, color(255));
  bullet = new Bullet(player.x + player.size / 2, player.y, 10, color(255));
  enemy1 = new Enemy(150, 50, 0, 0, 5, 50, color(255,0,0));
  enemy2 = new Enemy(250, 50, 0, 0, 5, 50, color(255,0,0));
  enemy3 = new Enemy(350, 50, 0, 0, 5, 50, color(255,0,0));
  enemy4 = new Enemy(450, 50, 0, 0, 5, 50, color(255,0,0));
  enemy5 = new Enemy(550, 50, 0, 0, 5, 50, color(255,0,0));
  gui = new GUI(10, 30, 0);
  smooth();
}

void draw()
{
  background(0);
  noStroke();
  // Player Functionality
  player.display();
  player.velX = (rightKey - leftKey) * player.movespeed;
  player.velY = (downKey - upKey) * player.movespeed;
  player.x += player.velX;
  player.y += player.velY;

  // Bullet Functionality
  bullet.display();
  if (!bulletFired)
  {
    bullet.x = player.x + player.size / 2;
    bullet.y = player.y - 5;
  }
  if (bulletFired)
    bullet.update();
  if (bullet.y <= 0)
  {
      resetBullet();
  }
  
  // Enemy
  enemy1.display(); enemy2.display(); enemy3.display(); enemy4.display(); enemy5.display();
  enemy1.move(); enemy2.move(); enemy3.move(); enemy4.move(); enemy5.move();
  
  // Player Bullet and Enemy Collision
  if (bullet.y <= enemy1.y + enemy1.size && bullet.y > enemy1.y + enemy1.size - 20 && bullet.x >= enemy1.x && bullet.x <= enemy1.x + enemy1.size && enemy1.x != -50)
  { 
    enemy1.x = -50;
    updateScore();
    resetBullet();
  }
  if (bullet.y <= enemy2.y + enemy2.size && bullet.y > enemy2.y + enemy2.size - 20 && bullet.x >= enemy2.x && bullet.x <= enemy2.x + enemy2.size && enemy2.x != -50)
  { 
    enemy2.x = -50;
    updateScore();
    resetBullet();
  }
  if (bullet.y <= enemy3.y + enemy3.size && bullet.y > enemy3.y + enemy3.size - 20 && bullet.x >= enemy3.x && bullet.x <= enemy3.x + enemy3.size && enemy3.x != -50)
  { 
    enemy3.x = -50;
    updateScore();
    resetBullet();
  }
  if (bullet.y <= enemy4.y + enemy4.size && bullet.y > enemy4.y + enemy4.size - 20 && bullet.x >= enemy4.x && bullet.x <= enemy4.x + enemy4.size && enemy4.x != -50)
  { 
    enemy4.x = -50;
    updateScore();
    resetBullet();
  }
  if (bullet.y <= enemy5.y + enemy5.size && bullet.y > enemy5.y + enemy5.size - 20 && bullet.x >= enemy5.x && bullet.x <= enemy5.x + enemy5.size && enemy5.x != -50)
  { 
    enemy5.x = -50;
    updateScore();
    resetBullet();
  }
  
  // GUI
  gui.display();
  
  // Setting World Bounds
  if (player.x <= 0)
    player.x = 0;
  if (player.x >= width - player.size)
    player.x = width - player.size;
  if (player.y <= 0)
    player.y = 0;
  if (player.y >= height - player.size)
    player.y = height - player.size;
}

void updateScore()
{
    numEnemiesKilled += 1;
    gui.score = numEnemiesKilled * 10;
}

void resetBullet()
{
    bulletFired = false;
    bullet.x = player.x + player.size / 2;
    bullet.y = player.y - 5;
}

void keyReleased()
{
  if (keyCode == LEFT)
    leftKey = 0;
  if (keyCode == RIGHT)
    rightKey = 0;
  if (keyCode == UP)
    upKey = 0;
  if (keyCode == DOWN)
    downKey = 0;
}
 
void keyPressed()
{
  if(key == ' ')
    bulletFired = true;
  if (keyCode == LEFT)
    leftKey = 1;
  if (keyCode == RIGHT)
    rightKey = 1;
  if (keyCode == UP)
    upKey = 1;
  if (keyCode == DOWN)
    downKey = 1;
}
