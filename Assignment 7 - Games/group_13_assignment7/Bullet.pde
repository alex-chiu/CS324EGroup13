class Bullet{
  float x, y, radius;
  color c;
  float movespeed;
  
  Bullet(float x, float y, float radius, color c, float movespeed){
    this.x = x;
    this.y = y; 
    this.radius = radius;
    this.c = c;
    this.movespeed = movespeed;
  }
  
  void display(){
    fill(c);
    ellipse(x, y, radius, radius);
  }
  
  void update(){
    y -= 10;
  }
  
  void enemyUpdate(){
    y += movespeed;
  }
  
  void setColor(color c){
    this.c = c;
  }
    
}
