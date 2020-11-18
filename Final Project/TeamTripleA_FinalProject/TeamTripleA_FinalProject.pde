// Art/Sound Setup
import processing.sound.*;
SoundFile menuMusic;
PFont gameFont;

// Scene Change Flags
boolean menuScene = true;
boolean gameScene = false;
boolean highScoreScene = false;

// Music Control Flag
boolean pauseMusic = false;

// Button Boolean Flags
boolean playButtonOver = false;
boolean scoreButtonOver = false;

// Game Objects
Star[] randomStars;
Player player;

void setup() {
  size(1200, 900);
  background(0);
  
  // Load Game Music
  menuMusic = new SoundFile(this, "menuMusic.wav");
  menuMusic.amp(0.25);
  menuMusic.cue(35);
  menuMusic.loop();
  
  // Load Font
  gameFont = createFont("airstrike.ttf", 32);
  textFont(gameFont);
  textAlign(CENTER, CENTER);
  
  // Initialize Game Objects
  randomStars = new Star[100];
  for (int i = 0; i < 100; i++) {
    randomStars[i] = new Star(random(1200), random(900), 0, random(1) * -1);
  }
  player = new Player(width/2, 800);
  
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
    for (int i = 0; i < 100; i++) {
      randomStars[i].move();
      randomStars[i].display();
    }
    println(randomStars[0].y);
    // Game Name
    fill(50, 250, 25);
    textSize(128);
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
    
  }
  // High Score Scene
  else if (highScoreScene) {
    background(0);
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

// Keyboard Input
void keyPressed() {
  if (key == 'm') {
    pauseMusic = !pauseMusic;
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
}
