float upKey;
float downKey;
float rightKey;
float leftKey;
boolean bulletFired = false;
boolean isPaused = false;
boolean hitEnemy1, hitEnemy2, hitEnemy3, hitEnemy4, hitEnemy5;
boolean gameOver = false;
boolean lose = false;
int numEnemiesKilled = 0;
int time = millis();

// Game Objects
Bullet bullet;
Player player;
Enemy[] enemies = new Enemy[5];
Bullet[] enemyBullets = new Bullet[5];
Earth[] earths = new Earth[5];
GUI gui;

// Main Setup Functionality
void setup() {
  size(800, 600);
  frameRate(60);
  
  // Initialize Game Objects
  player = new Player(350, 400, 0, 0, 5, 50, color(255));
  bullet = new Bullet(player.x + player.size / 2, player.y, 10, color(255), -10);
  for (int i = 0; i < 5; i++) {
    enemies[i] = new Enemy(150 + 100 * i, 50, 0, 0, 0.25, 50, color(255, 0, 0));
    enemyBullets[i] = new Bullet(enemies[i].x + enemies[i].size / 2, enemies[i].y + enemies[i].size, 10, color(255, 0, 0), 1);
    enemyBullets[i].enemy  = true;
    earths[i] = new Earth(175 + 100 * i, 550, 50);
  }
  gui = new GUI(10, 30, 0, 10, 60, 3, 670, 30, 1, color(0, 255, 0));
  smooth();
}

// Main Draw Loop
void draw() {
  background(0);
  noStroke();
  
  // Checks Game Over Condition
  if (!gameOver) {
    // Earth
    for (int i = 0; i < earths.length; i++) {
      earths[i].display();
    }
   
    // GUI
    gui.display();
  
    // Lose Condition
    if (gui.lives <= 0) {
      lose();
    }
  
    // Levels
    if (gui.checkScore() == 2) {
      win();
    }
    else if (gui.checkScore() == 1) {
      for (int i = 0; i < enemies.length; i++) {
        enemies[i].movespeed += 0.25;
        enemyBullets[i].movespeed += 0.25;
      }
    }
      
    // Resets Enemies
    if (gui.resetPos) {
      for (int i = 0; i < 5; i++) {
        enemies[i].x = 150 + 100 * i;
        enemies[i].y = 50;
        enemyBullets[i].x = enemies[i].x + enemies[i].size / 2;
        enemyBullets[i].y = enemies[i].y + enemies[i].size;
      }
      gui.resetPos = false;
    }
    
    // Resets Enemy Bullets
    if (gui.resetEBulletPos) {
      for (int i = 0; i < 5; i++) {
        enemyBullets[i].x = enemies[i].x + enemies[i].size / 2;
        enemyBullets[i].y = enemies[i].y + enemies[i].size;
      }
      gui.resetEBulletPos = false;
    }
  
    // Player Functionality
    player.display();
    player.velX = (rightKey - leftKey) * player.movespeed;
    player.velY = (downKey - upKey) * player.movespeed;
    player.move();

    // Bullet Functionality
    bullet.display();
    if (!bulletFired) {
      bullet.visible = false;
      bullet.x = player.x + player.size / 2;
      bullet.y = player.y - 5;
    }
    if (bulletFired) {  
      bullet.visible = true;
      bullet.update();
    }
    if (bullet.y <= 0) {
      resetBullet();
    }
  
    // Enemy
    for (int i = 0; i < enemies.length; i++) {
      enemies[i].display();
      enemies[i].move();
    
      enemyBullets[i].display();
      enemyBullets[i].enemyUpdate();
    }
 
    // Enemy Bullet and Player/Bound Collision
    for (int i = 0; i < enemyBullets.length; i++) {
      if (enemyBullets[i].y >= player.y && enemyBullets[i].y < player.y + player.size && enemyBullets[i].x >= player.x && enemyBullets[i].x <= player.x + player.size) {
        player.x = 50;
        gui.lives -= 1;
      }
      if (enemyBullets[i].y >= height - 100) {
        gui.resetEBulletPos = true; 
      }
    }
  
    // Player and Enemy Collision
    for (int i = 0; i < enemies.length; i++) {
      if (intersects(player.x, player.y, player.x + player.size, player.y + player.size, enemies[i].x, enemies[i].y, enemies[i].x + enemies[i].size, enemies[i].y + enemies[i].size)) {
        player.x = 50;
        gui.lives -= 1;
      }
    }
  
    // Player Bullet and Enemy Collision
    for (int i  = 0; i < enemies.length; i++) {
      if (bullet.y <= enemies[i].y + enemies[i].size && bullet.y > enemies[i].y && bullet.x >= enemies[i].x && bullet.x <= enemies[i].x + enemies[i].size) {
        enemies[i].x = -50;
        updateScore();
        resetBullet();
      }
    }

    // Enemy and Earth Collision
    for (int i = 0; i < earths.length; i++) {
      if (earths[i].y - earths[i].radius / 2 <= enemies[i].y + enemies[i].size) {
        lose(); 
      }
    }
  
    // Setting World Bounds
    if (player.x <= 0) {
      player.x = 0;
    }
    if (player.x >= width - player.size) {
      player.x = width - player.size;
    }
    if (player.y <= 0) {
      player.y = 0;
    }
    if (player.y >= height - player.size - 100) {
      player.y = height - player.size - 100;
    }
  }
  // Draws Lose/Win Screens
  else if (lose) {
    gui.displayLose();
  }
  else {
    gui.displayWin(); 
  }
}

// Updates the Score
void updateScore() {
    numEnemiesKilled += 1;
    gui.score = numEnemiesKilled * 10;
}

// Reset the Player's Bullet
void resetBullet() {
    bulletFired = false;
    bullet.visible = false;
    bullet.x = player.x + player.size / 2;
    bullet.y = player.y - 5;
}

// Helper Intersect Function
boolean intersects(float left1, float top1, float right1, float bottom1, float left2, float top2, float right2, float bottom2) {
    return !(left1 > right2 || right1 < left2 || top1 > bottom2 || bottom1 < top2);
}

// When the Player Wins
void win() {
    // game over, push a key to restart game
    for (int i = 0; i < enemies.length; i++) {
      enemies[i].movespeed = 0;
      enemyBullets[i].movespeed = 0;
    }
        
    player.x = 350; player.y = 400;
    bullet.x = player.x + player.size / 2; bullet.y = player.y;
    
    gameOver = true;
    lose = false;
}

// When the Player Loses
void lose() {
    // game over, push a key to restart game
    for (int i = 0; i < enemies.length; i++) {
      enemies[i].movespeed = 0;
      enemyBullets[i].movespeed = 0;
    }
        
    player.x = 350; player.y = 400;
    bullet.x = player.x + player.size / 2; bullet.y = player.y;
    
    gameOver = true;
    lose = true;
}


// Restart
void restartGame() {
    
  gui.lives = 3;
  gui.level = 1;
  gui.score = 0;
  numEnemiesKilled = 0;
    
  gui.resetPos = true;
  gui.resetEBulletPos = true;
    
  for (int i = 0; i < enemies.length; i++) {
    enemies[i].movespeed = 00.25;
    enemyBullets[i].movespeed = 1;
  }
}
  
// Check Key Release
void keyReleased() {
  if (keyCode == LEFT)
    leftKey = 0;
  if (keyCode == RIGHT)
    rightKey = 0;
  if (keyCode == UP)
    upKey = 0;
  if (keyCode == DOWN)
    downKey = 0;
}
 
// Check Key Press
void keyPressed() {
  if (key == 'r' && gameOver) {
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
