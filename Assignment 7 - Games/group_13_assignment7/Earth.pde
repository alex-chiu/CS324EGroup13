class Earth{
  float x, y, radius;
  color c;
  
  Earth(float x, float y, float radius, color c){
    this.x = x; this.y = y; this.radius = radius;
    this.c = c;
  }
  
  void display(){
    fill(c);
    ellipse(x, y, radius, radius);
    noFill();
  }
  void setColor(color c){
    this.c = c;
  }
}
