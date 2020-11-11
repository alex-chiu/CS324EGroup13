class Player{
  float x = 350;
  float y = 400;
  float velX = 0;
  float velY = 0;
  float movespeed = 5;
  float size = 50;
  
  Player(float x, float y, float velX, float velY, float movespeed, float size){
    this.x = x; this.y = y; this.velX = velX; 
    this.velY = velY; this.movespeed = movespeed; this.size = size;
  }
  
  void display(){
    rect(x, y, size, size);
  }

}
