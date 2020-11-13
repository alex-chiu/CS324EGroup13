class GUI{
  float x1, y1, x2, y2, x3, y3;
  int score, lives, level;
  
  GUI(float x1, float y1, int score, float x2, float y2, int lives, float x3, float y3, int level){
    this.x1 = x1; this.y1 = y1; this.score = score;
    this.x2 = x2; this.y2 = y2; this.lives = lives;
    this.x3 = x3; this.y3 = y3; this.level = level;
    
  }
  
  void display(){

    // Score
    textSize(32);
    fill(0, 255, 0);
    text("Score: " + score, x1, y1); 
    noFill();
    
    // Number of Lives
    textSize(32);
    fill(0, 255, 0);
    text("Lives: " + lives, x2, y2); 
    noFill();
    
    // Level
    textSize(32);
    fill(0, 255, 0);
    text("Level: " + level, x3, y3); 
    noFill();
    
  }
}
