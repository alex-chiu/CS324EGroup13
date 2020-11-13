class Bullet{
  float x, y, radius;
  color c;
  
  Bullet(float x, float y, float radius, color c){
    this.x = x;
    this.y = y; 
    this.radius = radius;
    this.c = c;
  }
  
  void display(){
    fill(c);
    ellipse(x, y, radius, radius);
  }
  
  void update(){
    y -= 10;
  }
  
  void enemyUpdate(){
    y += 1;
  }
  
}
