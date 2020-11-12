float upKey;
float downKey;
float rightKey;
float leftKey;
boolean bulletFired = false;
boolean isPaused = false;
Bullet bullet;
Player player;
Enemy enemy;
GUI gui;

void setup()
{
  size(800, 600);
  player = new Player(350, 400, 0, 0, 5, 50, color(255));
  bullet = new Bullet(player.x + player.size / 2, player.y, 10, color(255));
  enemy = new Enemy(350, 50, 0, 0, 5, 50, color(255,0,0));
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
    bulletFired = false;
    bullet.x = player.x + player.size / 2;
    bullet.y = player.y - 5;
  }
  
  // Enemy
  enemy.display();
  
  // Player Bullet and Enemy Collision
  if (bullet.y <= enemy.y + enemy.size)
  { 
    enemy.x = -50;
    gui.score += 1;
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
