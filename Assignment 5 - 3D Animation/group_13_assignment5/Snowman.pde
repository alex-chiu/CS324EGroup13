class Snowman {
  float speed, 
        sphere1x, sphere1y, sphere1z, sphere1radius,
        sphere2x, sphere2y, sphere2z, sphere2radius,
        sphere3x, sphere3y, sphere3z, sphere3radius;
  color c;
        
  Snowman(){
  }
  
  Snowman(float speed, 
          float sphere1x, float sphere1y, float sphere1z, float sphere1radius,
          float sphere2x, float sphere2y, float sphere2z, float sphere2radius,
          float sphere3x, float sphere3y, float sphere3z, float sphere3radius,
          color c
          ){
          this.speed = speed;
          this.sphere1x = sphere1x; this.sphere1y = sphere1y; this.sphere1z = sphere1z; this.sphere1radius = sphere1radius;
          this.sphere2x = sphere2x; this.sphere2y = sphere2y; this.sphere2z = sphere2z; this.sphere2radius = sphere2radius;
          this.sphere3x = sphere3x; this.sphere3y = sphere3y; this.sphere3z = sphere3z; this.sphere3radius = sphere3radius;
          this.c = c;
  }
  
  void display() {
  /*
  // bottom sphere
  translate(width/2, height/2, -100);
  noStroke();
  fill(255);
  sphere(100);
  
  // middle sphere
  translate(0, -125, 0);
  sphere(50);
  
  // top sphere
  translate(0, -70, 0);
  sphere(25);
  */
  
  pushMatrix();
  // bottom sphere
  translate(sphere1x, sphere1y, sphere1z);
  noStroke();
  fill(c);
  sphere(sphere1radius);
  
  // middle sphere
  translate(sphere2x, sphere2y, sphere2z);
  sphere(sphere2radius);
  
  // top sphere
  translate(sphere3x, sphere3y, sphere3z);
  sphere(sphere3radius);
  popMatrix();

 
  }
  
  void move() {
    //sphere1x += 10; 
    //sphere1y += 10; 
    sphere1z += 10;

  }
  
  void moveRight() {
    sphere1x += 10; 
  }
  
  void moveLeft() {
    sphere1x -= 10; 
  }
  
  void moveUp() {
    sphere1y -= 10; 
  }
  
  void moveDown() {
    sphere1y += 10; 
  }
  
  void moveFront() {
    sphere1z += 10; 
  }
  
  void moveBack() {
    sphere1z -= 50; 
  }
  
}
