class GUI{
  float x1, y1, x2, y2, x3, y3, x4, y4;
  float score, lives, level;
  color c;
  
  GUI(float x1, float y1, int score, float x2, float y2, int lives, float x3, float y3, int level, float x4, float y4, color c){
    this.x1 = x1; this.y1 = y1; this.score = score;
    this.x2 = x2; this.y2 = y2; this.lives = lives;
    this.x3 = x3; this.y3 = y3; this.level = level;
    this.x4 = x4; this.y4 = y4;
    this.c = c;
    
  }
  
  void display(){

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
  
    void setColor(color c){
      this.c = c;
    }
      void displayWin(){
      textSize(40);
      fill(color(255,0,0));
      text("YOU WON!!! - press any key to restart", x4, y4); 
      noFill();
    }
    void displayLose(){
      textSize(40);
      fill(color(255,0,0));
      text("GAME OVER - press any key to restart", x4, y4); 
      noFill();
    }
}
