class Snowball {
  float speed, x, y, z, r;
  color c;
        
  Snowball() {
  }
  
  Snowball(float speed, float x, float y, float z, float rad, color c) {
           this.speed = speed;
           this.x = x; this.y = y; this.z = z; this.r = rad;
           this.c = c;
  }
  
  void display() {
  pushMatrix();
  // bottom sphere
  translate(x, y, z);
  noStroke();
  fill(c);
  sphere(r);
  popMatrix();
  }
  
  void move() {
    x += 10;
  }
  
  void moveRight() {
    x += 10; 
  }
  
  void moveLeft() {
    x -= 10; 
  }
  
  void moveUp() {
    y -= 10; 
  }
  
  void moveDown() {
    y += 10; 
  }
  
  void moveFront() {
    z += 10; 
  }
  
  void moveBack() {
    z -= 10; 
  }
  
}
