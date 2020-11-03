class Ball {
  float x, y, radius, c;
  
  Ball(){
  }
  
  Ball(float x, float y, float radius, color c){
    this.x = x; this.y = y; this.radius = radius;
    this.c = c;
  }
  
  void display(){
    //ellipse(45, 568, 20, 20);
    fill(c);
    noStroke();
    ellipse(x, y, radius, radius);
    fill(255);
    stroke(0);
  }
  

  
  void moveRight(){
    x += 5;
  }
  void moveRightFaster(){
    x += 10;
  }
  void moveRightSlower(){
    x += 2;
  }
  void moveDown(){
    y += 5;
  }
  void moveDownSlower(){
    y += 2;
  }
  void moveDownFirstRamp(){
    y += 0.20;
  }
  void moveDownSecondRamp(){
    y += 0.42;
  }
  void moveLeft(){
    x -= 2;
  }
}
