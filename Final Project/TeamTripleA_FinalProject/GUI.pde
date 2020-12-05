class GUI {
  int score, lives, level;
  boolean spawn_wave;
  
  // Constructor
  GUI() {
    score = 0;
    lives = 3;
    level = 1;
    spawn_wave = true;
  }
  
  // Draws GUI Elements
  void display() {
    textAlign(LEFT, CENTER);
    textSize(32);
    fill(50, 250, 25);
    
    text("LEVEL: " + level, 15, 20);
    text("SCORE: " + score, 15, 50);
    text("LIVES: " + lives, 15, 80);
  }
}
