float upKey;
float downKey;
float rightKey;
float leftKey;
boolean bulletFired = false;
boolean isPaused = false;
boolean hitEnemy1, hitEnemy2, hitEnemy3, hitEnemy4, hitEnemy5;
boolean resetPosition = false;
boolean gameOver = false;
int numEnemiesKilled = 0;
int time = millis();
Bullet bullet, enemyBullet1, enemyBullet2, enemyBullet3, enemyBullet4, enemyBullet5;
Player player;
Enemy enemy1, enemy2, enemy3, enemy4, enemy5;
Earth earth1, earth2, earth3, earth4, earth5;
GUI gui;

void setup()
{
  size(800, 600);
  frameRate(60);
  player = new Player(350, 400, 0, 0, 5, 50, color(255));
  bullet = new Bullet(player.x + player.size / 2, player.y, 10, color(255), -10);
  enemy1 = new Enemy(150, 50, 0, 0, 0.25, 50, color(255,0,0));
  enemy2 = new Enemy(250, 50, 0, 0, 0.25, 50, color(255,0,0));
  enemy3 = new Enemy(350, 50, 0, 0, 0.25, 50, color(255,0,0));
  enemy4 = new Enemy(450, 50, 0, 0, 0.25, 50, color(255,0,0));
  enemy5 = new Enemy(550, 50, 0, 0, 0.25, 50, color(255,0,0));
  enemyBullet1 = new Bullet(enemy1.x + enemy1.size / 2, enemy1.y + enemy1.size, 10, color(255, 0, 0), 1);
  enemyBullet2 = new Bullet(enemy2.x + enemy2.size / 2, enemy2.y + enemy2.size, 10, color(255, 0, 0), 1);
  enemyBullet3 = new Bullet(enemy3.x + enemy3.size / 2, enemy3.y + enemy3.size, 10, color(255, 0, 0), 1);
  enemyBullet4 = new Bullet(enemy4.x + enemy4.size / 2, enemy4.y + enemy4.size, 10, color(255, 0, 0), 1);
  enemyBullet5 = new Bullet(enemy5.x + enemy5.size / 2, enemy5.y + enemy5.size, 10, color(255, 0, 0), 1);
  gui = new GUI(10, 30, 0, 10, 60, 3, 670, 30, 1, 30, height/2, color(0,255,0));
  
  // Earth
  earth1 = new Earth(175, 550, 50, color(255,0,0));
  earth2 = new Earth(275, 550, 50, color(0,255,0));
  earth3 = new Earth(375, 550, 50, color(255,255,0));
  earth4 = new Earth(475, 550, 50, color(0,0,255));
  earth5 = new Earth(575, 550, 50, color(255,165,0));
  smooth();
}

void draw()
{
  background(0);
  noStroke();
   
  // Earth
  earth1.display(); earth2.display(); earth3.display(); earth4.display(); earth5.display(); 
   
  // GUI
  gui.display();
  
  // Lose Condition
  if (gui.lives <= 0)
  {
    lose();
  }
  
  // Levels
  if (gui.score == 50)
  {
    gui.level = 2;
    resetPosition = true;
    gui.score += 0.1;
    enemy1.movespeed += 0.25; enemy2.movespeed += 0.25; enemy3.movespeed += 0.25; enemy4.movespeed += 0.25; enemy5.movespeed += 0.25;
    enemyBullet1.movespeed += 0.25; enemyBullet2.movespeed += 0.25; enemyBullet3.movespeed += 0.25; enemyBullet4.movespeed += 0.25; enemyBullet5.movespeed += 0.25;
  }
  if (gui.score == 100)
  {
    gui.level = 3;
    resetPosition = true;
    gui.score += 0.1;
    enemy1.movespeed += 0.25; enemy2.movespeed += 0.25; enemy3.movespeed += 0.25; enemy4.movespeed += 0.25; enemy5.movespeed += 0.25;
    enemyBullet1.movespeed += 0.25; enemyBullet2.movespeed += 0.25; enemyBullet3.movespeed += 0.25; enemyBullet4.movespeed += 0.25; enemyBullet5.movespeed += 0.25;
  }  
  if (gui.score == 150)
  {
    gui.level = 4;
    resetPosition = true;
    gui.score += 0.1;
    enemy1.movespeed += 0.25; enemy2.movespeed += 0.25; enemy3.movespeed += 0.25; enemy4.movespeed += 0.25; enemy5.movespeed += 0.25;
    enemyBullet1.movespeed += 0.25; enemyBullet2.movespeed += 0.25; enemyBullet3.movespeed += 0.25; enemyBullet4.movespeed += 0.25; enemyBullet5.movespeed += 0.25;
  }
  if (gui.score == 200)
  {
    gui.level = 5;
    resetPosition = true;
    gui.score += 0.1;
    enemy1.movespeed += 0.25; enemy2.movespeed += 0.25; enemy3.movespeed += 0.25; enemy4.movespeed += 0.25; enemy5.movespeed += 0.25;
    enemyBullet1.movespeed += 0.25; enemyBullet2.movespeed += 0.25; enemyBullet3.movespeed += 0.25; enemyBullet4.movespeed += 0.25; enemyBullet5.movespeed += 0.25;
  }
  if (gui.score == 250)
  {
    win();
  }
      
  if (resetPosition)
  {
    enemy1.x = 150; enemy1.y = 50;
    enemy2.x = 250; enemy2.y = 50;
    enemy3.x = 350; enemy3.y = 50;
    enemy4.x = 450; enemy4.y = 50;
    enemy5.x = 550; enemy5.y = 50;
    
    enemyBullet1.x = enemy1.x + enemy1.size / 2; enemyBullet1.y = enemy1.y + enemy1.size;
    enemyBullet2.x = enemy2.x + enemy2.size / 2; enemyBullet2.y = enemy2.y + enemy2.size;
    enemyBullet3.x = enemy3.x + enemy3.size / 2; enemyBullet3.y = enemy3.y + enemy3.size;
    enemyBullet4.x = enemy4.x + enemy4.size / 2; enemyBullet4.y = enemy4.y + enemy4.size;
    enemyBullet5.x = enemy5.x + enemy5.size / 2; enemyBullet5.y = enemy5.y + enemy5.size;
    
    resetPosition = false;
  }
  
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
  enemyBullet1.display(); enemyBullet2.display(); enemyBullet3.display(); enemyBullet4.display(); enemyBullet5.display();
  enemy1.move(); enemy2.move(); enemy3.move(); enemy4.move(); enemy5.move();
  
  // Enemy Bullets
  enemyBullet1.enemyUpdate(); enemyBullet2.enemyUpdate(); enemyBullet3.enemyUpdate(); enemyBullet4.enemyUpdate(); enemyBullet5.enemyUpdate();

  // Enemy Bullet and Player Collision
  if (enemyBullet1.y >= player.y && enemyBullet1.y < player.y + player.size && enemyBullet1.x >= player.x && enemyBullet1.x <= player.x + player.size)
  { 
    player.x = -50;
    gui.lives -= 1;
  }
  if (enemyBullet2.y >= player.y && enemyBullet2.y < player.y + player.size && enemyBullet2.x >= player.x && enemyBullet2.x <= player.x + player.size)
  { 
    player.x = -50;
    gui.lives -= 1;
  }
  if (enemyBullet3.y >= player.y && enemyBullet3.y < player.y + player.size && enemyBullet3.x >= player.x && enemyBullet3.x <= player.x + player.size)
  { 
    player.x = -50;
    gui.lives -= 1;
  }
  if (enemyBullet4.y >= player.y && enemyBullet4.y < player.y + player.size && enemyBullet4.x >= player.x && enemyBullet4.x <= player.x + player.size)
  { 
    player.x = -50;
    gui.lives -= 1;
  }
  if (enemyBullet5.y >= player.y && enemyBullet5.y < player.y + player.size && enemyBullet5.x >= player.x && enemyBullet5.x <= player.x + player.size)
  { 
    player.x = -50;
    gui.lives -= 1;
  }
  
  // Player and Enemy Collision
  if ( intersects(player.x, player.y, player.x + player.size, player.y + player.size, enemy1.x, enemy1.y, enemy1.x + enemy1.size, enemy1.y + enemy1.size) )
  {
    player.x = -50;
    gui.lives -= 1;
  }
  if ( intersects(player.x, player.y, player.x + player.size, player.y + player.size, enemy2.x, enemy2.y, enemy2.x + enemy2.size, enemy2.y + enemy2.size) )
  {
    player.x = -50;
    gui.lives -= 1;
  }
  if ( intersects(player.x, player.y, player.x + player.size, player.y + player.size, enemy3.x, enemy3.y, enemy3.x + enemy3.size, enemy3.y + enemy3.size) )
  {
    player.x = -50;
    gui.lives -= 1;
  }
  if ( intersects(player.x, player.y, player.x + player.size, player.y + player.size, enemy4.x, enemy4.y, enemy4.x + enemy4.size, enemy4.y + enemy4.size) )
  {
    player.x = -50;
    gui.lives -= 1;
  }
  if ( intersects(player.x, player.y, player.x + player.size, player.y + player.size, enemy5.x, enemy5.y, enemy5.x + enemy5.size, enemy5.y + enemy5.size) )
  {
    player.x = -50;
    gui.lives -= 1;
  }
  
  // Player Bullet and Enemy Collision
  if (bullet.y <= enemy1.y + enemy1.size && bullet.y > enemy1.y && bullet.x >= enemy1.x && bullet.x <= enemy1.x + enemy1.size)
  { 
    enemy1.x = -50;
    updateScore();
    resetBullet();
  }
  if (bullet.y <= enemy2.y + enemy2.size && bullet.y > enemy2.y && bullet.x >= enemy2.x && bullet.x <= enemy2.x + enemy2.size)
  { 
    enemy2.x = -50;
    updateScore();
    resetBullet();
  }
  if (bullet.y <= enemy3.y + enemy3.size && bullet.y > enemy3.y && bullet.x >= enemy3.x && bullet.x <= enemy3.x + enemy3.size)
  { 
    enemy3.x = -50;
    updateScore();
    resetBullet();
  }
  if (bullet.y <= enemy4.y + enemy4.size && bullet.y > enemy4.y && bullet.x >= enemy4.x && bullet.x <= enemy4.x + enemy4.size)
  { 
    enemy4.x = -50;
    updateScore();
    resetBullet();
  }
  if (bullet.y <= enemy5.y + enemy5.size && bullet.y > enemy5.y && bullet.x >= enemy5.x && bullet.x <= enemy5.x + enemy5.size)
  { 
    enemy5.x = -50;
    updateScore();
    resetBullet();
  }

  // Enemy and Earth Collision
  if (earth1.y - earth1.radius/2 <= enemy1.y + enemy1.size)
  { 
    lose();
  }
  if (earth2.y - earth2.radius/2 <= enemy2.y + enemy2.size)
  { 
    lose();
  }
  if (earth3.y - earth3.radius/2 <= enemy3.y + enemy3.size)
  { 
    lose();
  }
  if (earth4.y - earth4.radius/2 <= enemy4.y + enemy4.size)
  { 
    lose();
  }
  if (earth5.y - earth5.radius/2 <= enemy5.y + enemy5.size)
  { 
    lose();
  }
  
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

boolean intersects(float left1, float top1, float right1, float bottom1, float left2, float top2, float right2, float bottom2) 
{
    return !(left1 > right2 || right1 < left2 || top1 > bottom2 || bottom1 < top2);
}

void win()
{
    // game over, push a key to restart game
    gui.setColor(0);
    enemy1.setColor(0); enemy2.setColor(0); enemy3.setColor(0); enemy4.setColor(0); enemy5.setColor(0);
    enemyBullet1.setColor(0); enemyBullet2.setColor(0); enemyBullet3.setColor(0); enemyBullet4.setColor(0); enemyBullet5.setColor(0);
    player.setColor(0);
    bullet.setColor(0);
    earth1.setColor(0); earth2.setColor(0); earth3.setColor(0); earth4.setColor(0); earth5.setColor(0);

    enemy1.movespeed = 0; enemy2.movespeed = 0; enemy3.movespeed = 0; enemy4.movespeed = 0; enemy5.movespeed = 0;
    enemyBullet1.movespeed = 0; enemyBullet2.movespeed = 0; enemyBullet3.movespeed = 0; enemyBullet4.movespeed = 0; enemyBullet5.movespeed = 0;
        
    player.x = 350; player.y = 400;
    bullet.x = player.x + player.size / 2; bullet.y = player.y;
    
    gui.displayWin();
    gameOver = true;
}

void lose()
{
    // game over, push a key to restart game
    gui.setColor(0);
    enemy1.setColor(0); enemy2.setColor(0); enemy3.setColor(0); enemy4.setColor(0); enemy5.setColor(0);
    enemyBullet1.setColor(0); enemyBullet2.setColor(0); enemyBullet3.setColor(0); enemyBullet4.setColor(0); enemyBullet5.setColor(0);
    player.setColor(0);
    bullet.setColor(0);
    earth1.setColor(0); earth2.setColor(0); earth3.setColor(0); earth4.setColor(0); earth5.setColor(0);

    enemy1.movespeed = 0; enemy2.movespeed = 0; enemy3.movespeed = 0; enemy4.movespeed = 0; enemy5.movespeed = 0;
    enemyBullet1.movespeed = 0; enemyBullet2.movespeed = 0; enemyBullet3.movespeed = 0; enemyBullet4.movespeed = 0; enemyBullet5.movespeed = 0;
        
    player.x = 350; player.y = 400;
    bullet.x = player.x + player.size / 2; bullet.y = player.y;
    
    gui.displayLose();
    gameOver = true;
}
    // Restart
void restartGame()
{
    gui.lives = 3;
    gui.level = 1;
    gui.score = 0;
    numEnemiesKilled = 0;
    
    resetPosition = true;
    
    // resetting colors
    gui.setColor(color(0,255,0));
    enemy1.setColor(color(255,0,0)); enemy2.setColor(color(255,0,0)); enemy3.setColor(color(255,0,0)); enemy4.setColor(color(255,0,0)); enemy5.setColor(color(255,0,0));
    enemyBullet1.setColor(color(255,0,0)); enemyBullet2.setColor(color(255,0,0)); enemyBullet3.setColor(color(255,0,0)); enemyBullet4.setColor(color(255,0,0)); enemyBullet5.setColor(color(255,0,0));
    player.setColor(255);
    bullet.setColor(255);
    earth1.setColor(color(255,0,0)); earth2.setColor(color(0,255,0)); earth3.setColor(color(255,255,0)); earth4.setColor(color(0,0,255)); earth5.setColor(color(255,165,0));
    
    // reset speed
    enemy1.movespeed = 0.25; enemy2.movespeed = 0.25; enemy3.movespeed = 0.25; enemy4.movespeed = 0.25; enemy5.movespeed = 0.25;
    enemyBullet1.movespeed = 1; enemyBullet2.movespeed = 1; enemyBullet3.movespeed = 1; enemyBullet4.movespeed = 1; enemyBullet5.movespeed = 1;
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
  if (key == 'r' && gameOver)
  {
    restartGame();
    gameOver = false;
  }
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
