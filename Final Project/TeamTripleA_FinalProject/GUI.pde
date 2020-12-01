class GUI{
  float x1, y1, x2, y2, x3, y3;
  float score, lives, level;
  color c;
  boolean resetPos, resetEBulletPos;
  
  // Constructor
  GUI(float x1, float y1, int score, float x2, float y2, int lives, float x3, float y3, int level, color c) {
    this.x1 = x1; this.y1 = y1; this.score = score;
    this.x2 = x2; this.y2 = y2; this.lives = lives;
    this.x3 = x3; this.y3 = y3; this.level = level;
    this.c = c;
    resetPos = false;
    resetEBulletPos = false;
  }
  
  // Draws GUI Elements
  void display() {
    textAlign(LEFT);
    
    // Score
    textSize(32);
    fill(c);
    text("Score: " + int(score), x1, y1); 
    noFill();
    
    // Number of Lives
    textSize(32);
    fill(c);
    text("Lives: " + int(lives), x2, y2); 
    noFill();
    
    // Level
    textSize(32);
    fill(c);
    text("Level: " + int(level), x3, y3); 
    noFill();
  }
  
  // Displays Win Screen
  void displayWin() {
    textSize(40);
    fill(color(255,0,0));
    textAlign(CENTER);
    text("YOU WON!!! - Press R to Restart", width/2, height/2); 
    noFill();
  }
  
  // Displays Loss Screen
  void displayLose() {
    textSize(40);
    fill(color(255, 0, 0));
    textAlign(CENTER);
    text("GAME OVER - Press R to Restart", width/2, height/2); 
    noFill();
  }
  
  // Checks the Score
  int checkScore() {
    if (score == 250) {
      return 2;
    }
    else if (score == 200 || score == 150 || score == 100 || score == 50) {
      level = (score + 50) / 50;
      resetPos = true;
      score += 0.1;
      return 1;
    }
    else {
      return 0;
    }
  }
}
