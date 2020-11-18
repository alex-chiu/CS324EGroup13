import processing.sound.*;
SoundFile menuMusic;

// Scene Change Flags
boolean menuScene = true;
boolean gameScene = false;
boolean highScoreScene = false;

// Music Control Flag
boolean pauseMusic = false;

void setup() {
  size(1200, 900);
  background(0);
  
  // Load Game Music
  menuMusic = new SoundFile(this, "menuMusic.wav");
  menuMusic.play();
}

void draw() {
  // Music Control
  checkMusic();
  
  // Overall Scene Display Tree
  // Menu Scene
  if (menuScene) {
    background(0);
  }
  // Game Scene
  else if (gameScene) {
    
  }
  // High Score Scene
  else if (highScoreScene) {
    
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

// Keyboard Input
void keyPressed() {
  
}
