// Art/Sound Setup
import processing.sound.*;
SoundFile menuMusic, click, shipFire, lose;
PFont gameFont;

// High Score File
XML scoreXML;
XML[] scoreChildren;

// Scene Change Flags
boolean menuScene = true;
boolean gameScene = false;
boolean highScoreScene = false;

// Music Control Flag
boolean pauseMusic = false;

// Button Boolean Flags
boolean playButtonOver = false;
boolean scoreButtonOver = false;
boolean hsBackButtonOver = false;
boolean goMenuButtonOver = false;
boolean goPAButtonOver = false;
boolean goHSButtonOver = false;

// Game Boolean Flags
boolean newHS = false;
boolean updateHS = false;
boolean gameOver = false;

// Game Objects
Star[] randomStars;
Player player;
GUI gui;
ArrayList<Enemy> currentEnemies;

// Player Movement Keys
float up, down, left, right;

void setup() {
  size(1200, 900);
  background(0);
  
  // Load Game Music
  menuMusic = new SoundFile(this, "menuMusic.wav");
  menuMusic.amp(0.25);
  menuMusic.cue(35);
  menuMusic.loop();
  
  // Load Sound Effects
  click = new SoundFile(this, "click.wav");
  shipFire = new SoundFile(this, "shipFire.wav");
  lose = new SoundFile(this, "lose.wav");
  
  // Scale
  click.amp(0.5);
  shipFire.amp(0.5);
  lose.amp(0.5);
  
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
  gui = new GUI();
  currentEnemies = new ArrayList<Enemy>();
  
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
      // Spawns New Enemies
      if (gui.spawnWave) {
        gui.spawnWave = false;
        if (gui.level <= 3) {
          for (int i = 0; i < gui.level; i++) {
            for (int j = 1; j < 5; j++) {
              Enemy e = new Enemy(240*j, 25 - 50*i, 0, 1);
              currentEnemies.add(e);
            }
          }
        }
        else if (gui.level <= 6) {
          for (int i = 0; i < (gui.level - 3); i++) {
            for (int j = 1; j < 8; j++) {
              Enemy e = new Enemy(150*j, 25 - 50*i, 0, 1);
              currentEnemies.add(e);
            }
          }
        }
        else {
          for (int i = 0; i < (gui.level - 6); i++) {
            for (int j = 1; j < 8; j++) {
              Enemy e = new Enemy(150*j, 25 - 50*i, (float)(-0.5 + Math.random()), 1);
              currentEnemies.add(e);
            }
          }
        }
      }
    
      // Loops Through All Enemies Currently on Screen
      for (int i = 0; i < currentEnemies.size(); i++) {
        currentEnemies.get(i).move();
      
        // Check if Player Bullets hit Enemies
        for (int j = 0; j < player.bullets.size(); j++) {
          if (currentEnemies.get(i).checkBulletCollision(player.bullets.get(j))) {
            player.bullets.get(j).visible = false;
          }
        }
      
        // Check if Player hits Enemies
        if (currentEnemies.get(i).checkPlayerCollision(player)) {
          gui.lives -= 1;
          if (gui.lives == 0) {
            lose.play();
            gameOver = true; 
          }
        }
      
        // Check if Enemies Reach Bottom
        if (currentEnemies.get(i).y + 25 >= height) {
          currentEnemies.get(i).alive = false;
          lose.play();
          gameOver = true; 
        }
      
        // Clear Dead Enemies from ArrayList
        if (!currentEnemies.get(i).alive) {
          currentEnemies.remove(i);
          gui.score += 10;
          break;
        }
        currentEnemies.get(i).display();
      }
      
      // Check if Enemies are Gone
      if (currentEnemies.size() == 0) {
        gui.level += 1;
        gui.spawnWave = true;
      }
    
      // Move and Draw Player
      player.vx = (right - left) * player.ms;
      player.vy = (down - up) * player.ms;
      player.move();
      player.updateBullets();
      player.display();
      
      // Update and Draw GUI
      gui.display();
    }
    else {
      // Button Location Debug Rectangles
      // fill(255);
      // rect(60, 690, 190, 32);
      // rect(width/2 - 290, 690, 370, 32);
      // rect(745, 690, 420, 32);
      
      scoreChildren = scoreXML.getChildren("player");
      for (int i = 0; i < scoreChildren.length; i++) {
        if (gui.score > scoreChildren[i].getInt("score")) {
          newHS = true; 
          gui.newRank = scoreChildren[i].getInt("rank");
          break;
        }
      }
      
      fill(50, 250, 25);
      textSize(64);
      textAlign(CENTER, CENTER);
      text("Game Over", width/2, 100);
      text("Level: " + gui.level, width/2, 200);
      text("Score: " + gui.score, width/2, 300);
      if (newHS) {
         text("New High Score", width/2, 400);
         text("Enter Initials: " + gui.hsInitials, width/2, 500);
         if (updateHS) {
           updateHS = false; 
           for (int i = gui.newRank - 1; i < scoreChildren.length; i++) {
              gui.lowerNames.add(scoreChildren[i].getString("name"));
              gui.lowerScores.add(scoreChildren[i].getInt("score"));
           }
           scoreChildren[gui.newRank - 1].setString("name", gui.hsInitials);
           scoreChildren[gui.newRank - 1].setInt("score", gui.score);
           for (int i = gui.newRank; i < scoreChildren.length; i++) {
             scoreChildren[i].setString("name", gui.lowerNames.get(gui.idx));
             scoreChildren[i].setInt("score", gui.lowerScores.get(gui.idx));
             gui.idx++;
           }
           saveXML(scoreXML, "data/scores.xml");
         }
      }
      
      // Navigation Buttons
      updateGOButtons(mouseX, mouseY);
      if (goMenuButtonOver) {
        fill(250, 225, 25); 
      }
      else {
        fill(50, 250, 25);
      }
      text("Menu", 150, 700);
      if (goPAButtonOver) {
        fill(250, 225, 25); 
      }
      else {
        fill(50, 250, 25);
      }
      text("Play Again", width/2 - 110, 700);
      if (goHSButtonOver) {
        fill(250, 225, 25); 
      }
      else {
        fill(50, 250, 25);
      }
      text("High Scores", 950, 700);
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
      text(scoreChildren[i].getInt("rank") + ". ", 200, 70 * i + 200);
      text(scoreChildren[i].getString("name"), 300, 70 * i + 200);
      text("Pts", 900, 70 * i + 200);
      textAlign(RIGHT, CENTER);
      text(scoreChildren[i].getInt("score"), 850, 70 * i + 200);
    }
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
  playButtonOver = (x >= width/2 - 80 && x <= width/2 + 90 && y >= 530 && y <= 580); 
  scoreButtonOver = (x >= width/2 - 210 && x <= width/2 + 220 && y >= 680 && y <= 730);
}

// Updates High Score Scene Button Flags
void updateHSButtons(float x, float y) {
  hsBackButtonOver = (x >= 25 && x <= 155 && y >= 20 && y <= 52);
}

// Updates Game Over Screen Button Flags
void updateGOButtons(float x, float y) {
  goMenuButtonOver = (x >= 60 && x <= 250 && y >= 680 && y <= 722);
  goPAButtonOver = (x >= width/2 - 290 && x <= width/2 + 80 && y >= 680 && y <= 722);
  goHSButtonOver = (x >= 745 && x <= 1165 && y >= 680 && y <= 722);
}

// Keyboard Input
void keyPressed() {
  if (key == 'm') {
    pauseMusic = !pauseMusic;
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
  if (key == ' ') {
    shipFire.play();
    player.fire(); 
  }
  if (gameScene && gameOver && newHS && gui.initialCt < 2) {
    gui.hsInitials += key;
    gui.initialCt++;
    if (gui.initialCt == 2) {
      updateHS = true; 
    }
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
      click.play();
      menuScene = false;
      gameScene = true;
    }
    if (mouseX >= width/2 - 210 && mouseX <= width/2 + 220 && mouseY >= 680 && mouseY <= 730) {
      click.play();
      menuScene = false;
      highScoreScene = true;
    }
  }
  else if (gameScene && gameOver) {
    if (mouseX >= width/2 - 290 && mouseX <= width/2 + 80 && mouseY >= 680 && mouseY <= 722) {
      click.play();
      resetGame();
    }
    else if (mouseX >= 60 && mouseX <= 250 && mouseY >= 680 && mouseY <= 722) {
      click.play();
      resetGame();
      gameScene = false;
      menuScene = true;
    }
    else if (mouseX >= 745 && mouseX <= 1165 && mouseY >= 680 && mouseY <= 722) {
      click.play();
      resetGame();
      gameScene = false;
      highScoreScene = true;
    }
  }
  else if (highScoreScene) {
    if (mouseX >= 25 && mouseX <= 155 && mouseY >= 20 && mouseY <= 52) {
      click.play();
      highScoreScene = false;
      menuScene = true;
    }
  }
}

// Reset Game
void resetGame() {
  gui.reset();
  currentEnemies.clear();
  player.x = width/2;
  player.y = 800;
  newHS = false;
  updateHS = false;
  gameOver = false; 
}
