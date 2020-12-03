// Art/Sound Setup
import processing.sound.*;
SoundFile menuMusic, shipFireSFX, explosionSFX, earthCollisionSFX;
PFont gameFont;

// High Score File
XML scoreXML;
XML[] scoreChildren;

int numEnemiesKilled = 0;

// Scene Change Flags
boolean menuScene = true;
boolean gameScene = false;
boolean highScoreScene = false;
boolean gameOver = false;
boolean lose = false;

// Music Control Flag
boolean pauseMusic = false;

// Button Boolean Flags
boolean playButtonOver = false;
boolean scoreButtonOver = false;
boolean hsBackButtonOver = false;

// Bullet Boolean Flags
boolean bulletFired = false;
boolean bulletReady = true;

// Game Objects
Star[] randomStars;
Player player;
Bullet bullet;
Enemy[] enemies = new Enemy[5];
Bullet[] enemyBullets = new Bullet[5];
Earth[] earths = new Earth[5];
GUI gui;

// Player Movement Keys
float up, down, left, right;

void setup() {
  size(1200, 900);
  frameRate(60);
  background(0);
  
  // Load Game Music
  menuMusic = new SoundFile(this, "menuMusic.wav");
  menuMusic.amp(0.25);
  menuMusic.cue(35);
  menuMusic.loop();
  
  // Load Game SFX
  shipFireSFX = new SoundFile(this, "shipFire3.wav");
  explosionSFX = new SoundFile(this, "shipFire2.wav");
  earthCollisionSFX = new SoundFile(this, "shipFire.wav");
  
  // Load Font
  gameFont = createFont("airstrike.ttf", 32);
  textFont(gameFont);
  textAlign(CENTER, CENTER);
  
  // Load High Score Data
  scoreXML = loadXML("scores.xml");
  scoreChildren = scoreXML.getChildren("player");
  
  // Initialize Game Objects
  randomStars = new Star[150];
  for (int i = 0; i < randomStars.length; i++) {
    randomStars[i] = new Star(random(1200), random(900), 0, random(1));
  }
  player = new Player(width/2, 800);
  bullet = new Bullet(player.x / 2, player.y, 10, color(255), 10);
  for (int i = 0; i < 5; i++) {
    enemies[i] = new Enemy(150 + 200 * i, 50, 0, 0, 0.25, 50, color(255, 0, 0));
    enemyBullets[i] = new Bullet(enemies[i].x + enemies[i].size / 2, enemies[i].y + enemies[i].size, 10, color(255, 0, 0), 1);
    enemyBullets[i].enemy  = true;
    earths[i] = new Earth(175 + 200 * i, 550, 50);
  }
  gui = new GUI(10, 30, 0, 10, 60, 3, 1050, 30, 1, color(0, 255, 0));
  
  // Overall Settings
  noStroke();
  smooth();
}

void draw() {
  // Music Control
  checkMusic();
  
  // Overall Scene Display Tree
  // Menu Scene
  if (menuScene) {
    background(0);
    
    // Button Location Debug Rectangles
    // fill(255);
    // rect(width/2 - 80, 530, 170, 50);
    // rect(width/2 - 210, 680, 430, 50);
    
    // Move and Draw Stars 
    for (int i = 0; i < randomStars.length; i++) {
      randomStars[i].move();
      randomStars[i].display();
    }

    // Game Name
    fill(50, 250, 25);
    textSize(128);
    textAlign(CENTER, CENTER);
    text("GALACTIC", width/2, 100);
    text("INVADERS", width/2, 200);
    
    // Pause Music Command
    textSize(24);
    text("Press M to Mute", 125, height - 25);
    
    // Other Screen Buttons
    updateMenuButtons(mouseX, mouseY);
    textSize(64);
    if (playButtonOver) {
      fill(250, 225, 25); 
    }
    else {
      fill(50, 250, 25);
    }
    text("Play", width/2, 550);
    if (scoreButtonOver) {
      fill(250, 225, 25); 
    }
    else {
      fill(50, 250, 25);
    }
    text("High Scores", width/2, 700);
  }
  // Game Scene
  else if (gameScene) {
    background(0);
    
    // Move and Draw Stars 
    for (int i = 0; i < 100; i++) {
      randomStars[i].move();
      randomStars[i].display();
    }
    
  if (!gameOver) {
    
    // Earth
    for (int i = 0; i < earths.length; i++) {
      earths[i].display();
    }
   
    // Move and Draw Player
    player.vx = (right - left) * player.ms;
    player.vy = (down - up) * player.ms;
    player.move();
    if (left == 1) {
        player.displayMovingLeft();
    }
    else if (right == 1) {
      player.displayMovingRight();
    }
    else if (up == 1 || down == 1) {
      player.displayMoving();
    }
    else {
      player.display();
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
        enemies[i].x = 150 + 200 * i;
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

    // Bullet Functionality
    bullet.display();
    if (!bulletFired) {
      bullet.visible = false;
      bullet.x = player.x;
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
      if (enemyBullets[i].y >= player.y - 25 && enemyBullets[i].y < player.y + 25 && enemyBullets[i].x >= player.x - 25 && enemyBullets[i].x <= player.x + 25) {
        player.x = 50;
        gui.lives -= 1;
      }
      if (enemyBullets[i].y >= height - 100) {
        gui.resetEBulletPos = true; 
      }
    }
  
    // Player and Enemy Collision
    for (int i = 0; i < enemies.length; i++) {
      if (intersects(player.x - 25, player.y - 25, player.x + 25, player.y + 25, enemies[i].x, enemies[i].y, enemies[i].x + enemies[i].size, enemies[i].y + enemies[i].size)) {
        player.x = 50;
        gui.lives -= 1;
      }
    }
  
    // Player Bullet and Enemy Collision
    for (int i  = 0; i < enemies.length; i++) {
      if (bullet.y <= enemies[i].y + enemies[i].size && bullet.y > enemies[i].y && bullet.x >= enemies[i].x && bullet.x <= enemies[i].x + enemies[i].size) {
        explosionSFX.play();
        enemies[i].x = -50;
        updateScore();
        resetBullet();
      }
    }

    // Enemy and Earth Collision
    for (int i = 0; i < earths.length; i++) {
      if (earths[i].y - earths[i].radius / 2 <= enemies[i].y + enemies[i].size) {
        earthCollisionSFX.play();
        lose(); 
      }
    }
  
    // Setting World Bounds
    if (player.x <= 0) {
      player.x = 0;
    }
    if (player.x >= width) {
      player.x = width;
    }
    if (player.y <= 0) {
      player.y = 0;
    }
    if (player.y >= height - 100) {
      player.y = height - 100;
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
  // High Score Scene
  else if (highScoreScene) {
    background(0);
    
    // Button Location Debug Rectangles
    // fill(255);
    // rect(25, 20, 130, 32);
    
    updateHSButtons(mouseX, mouseY);
    if (hsBackButtonOver) {
      fill(250, 225, 25); 
    }
    else {
      fill(50, 250, 25);
    }
    text("Back", 150, 30);
    
    // Move and Draw Stars 
    for (int i = 0; i < 100; i++) {
      randomStars[i].move();
      randomStars[i].display();
    }
    
    // High Score Text
    fill(50, 250, 25);
    textSize(64);
    textAlign(CENTER, CENTER);
    text("High Scores", width/2, 100);
    
    textSize(48);
    for (int i = 0; i < scoreChildren.length; i++) {
      textAlign(LEFT, CENTER);
      text(scoreChildren[i].getInt("rank") + ". ", 150, 70 * i + 200);
      text(scoreChildren[i].getString("name"), 250, 70 * i + 200);
      text("Pts", 975, 70 * i + 200);
      textAlign(RIGHT, CENTER);
      text(scoreChildren[i].getInt("score"), 925, 70 * i + 200);
    }
  }
}
// Updates the Score
void updateScore() {
    numEnemiesKilled += 1;
    gui.score = numEnemiesKilled * 10;
}

// Reset the Player's Bullet
void resetBullet() {
    bulletReady = true;
    bulletFired = false;
    bullet.visible = false;
    bullet.x = player.x;
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
    bullet.x = player.x; bullet.y = player.y;
    
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
    bullet.x = player.x; bullet.y = player.y;
    
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

// Check Music Playback
void checkMusic() {
  if (menuMusic.isPlaying() && pauseMusic) {
    menuMusic.pause();
  }
  else if (!menuMusic.isPlaying() && !pauseMusic) {
    menuMusic.play(); 
  }
}

// Updates Menu Button Flags
void updateMenuButtons(float x, float y) {
  if (x >= width/2 - 80 && x <= width/2 + 90 && y >= 530 && y <= 580) {
    playButtonOver = true;
  }
  else {
    playButtonOver = false;
  }
  if (x >= width/2 - 210 && x <= width/2 + 220 && y >= 680 && y <= 730) {
    scoreButtonOver = true;
  }
  else {
    scoreButtonOver = false;
  }
}

// Updates High Score Scene Button Flags
void updateHSButtons(float x, float y) {
  if (x >= 25 && x <= 155 && y >= 20 && y <= 52) {
    hsBackButtonOver = true;
  }
  else {
    hsBackButtonOver = false;
  }
}

// Keyboard Input
void keyPressed() {
  if (key == 'm') {
    pauseMusic = !pauseMusic;
  }
  if (key == 'r' && gameOver) {
    restartGame();
    gameOver = false;
  }
  if(key == ' ' && bulletReady == true) {
    shipFireSFX.play();
    bulletFired = true;
    bulletReady = false;
  }
  if (key == 'w') {
    up = 1;
  }
  if (key == 's') {
    down = 1;
  }
  if (key == 'a') {
    left = 1;
  }
  if (key == 'd') {
    right = 1;
  }
}

void keyReleased() {
  if (key == 'w') {
    up = 0;
  }
  if (key == 's') {
    down = 0;
  }
  if (key == 'a') {
    left = 0;
  }
  if (key == 'd') {
    right = 0;
  }
}

// Mouse Input
void mouseClicked() {
 // Menu Screen Mouse Input
 if (menuScene) {
    if (mouseX >= width/2 - 80 && mouseX <= width/2 + 90 && mouseY >= 530 && mouseY <= 580) {
      menuScene = false;
      gameScene = true;
    }
    if (mouseX >= width/2 - 210 && mouseX <= width/2 + 220 && mouseY >= 680 && mouseY <= 730) {
      menuScene = false;
      highScoreScene = true;
    }
  }
  else if (highScoreScene) {
    if (mouseX >= 25 && mouseX <= 155 && mouseY >= 20 && mouseY <= 52) {
      highScoreScene = false;
      menuScene = true;
    }
  }
}
