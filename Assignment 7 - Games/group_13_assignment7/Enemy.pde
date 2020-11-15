class Enemy{
  float x = 350;
  float y = 400;
  float velX = 0;
  float velY = 0;
  float movespeed = 5;
  float size = 50;
  color c;
  
  Enemy(float x, float y, float velX, float velY, float movespeed, float size, color c){
    this.x = x; this.y = y; this.velX = velX; 
    this.velY = velY; this.movespeed = movespeed; this.size = size;
    this.c = c;
  }
  
  void display(){
    fill(c);
    rect(x, y, size, size);
    noFill();
  }

  void move(){
    y += 0.25;
  }
  
  void setColor(color c){
    this.c = c;
  }
    
}
