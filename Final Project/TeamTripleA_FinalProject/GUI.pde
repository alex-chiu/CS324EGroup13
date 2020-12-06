class GUI {
  int score, lives, level, initialCt, newRank, idx;
  boolean spawnWave;
  String hsInitials;
  ArrayList<String> lowerNames = new ArrayList<String>();
  ArrayList<Integer> lowerScores = new ArrayList<Integer>();
  
  // Constructor
  GUI() {
    score = 0;
    lives = 3;
    level = 1;
    initialCt = 0;
    hsInitials = "";
    spawnWave = true;
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
  
  // Resets GUI
  void reset() {
    score = 0;
    lives = 3;
    level = 1;
    initialCt = 0;
    idx = 0;
    spawnWave = true;
    hsInitials = "";
    lowerNames.clear();
    lowerScores.clear();
  }
}
