class GUI{
  float x1, y1;
  int score;
  
  GUI(float x1, float y1, int score){
    this.x1 = x1; this.y1 = y1; this.score = score;
  }
  
  void display(){
    // Level
    
    
    // Score
    textSize(32);
    fill(0, 255, 0);
    text("Score: " + score, x1, y1); 
    noFill();
    
    // Number of Lives
    
  }
}
