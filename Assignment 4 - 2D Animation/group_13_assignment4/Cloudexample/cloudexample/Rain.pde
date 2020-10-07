class Rain {
  float speed, rainspeed,
    x1, x2, x3, x4, x5,
    y1, y2, y3, y4, y5,
    radius
  
  
  ;
  
  color c;
  
  Rain() {
  };
  
  
  
  Rain(float speed, float rainspeed,
    float x1, float x2, float x3, float x4, float x5,
    float y1, float y2, float y3, float y4, float y5,
    float radius, color c) {
      this.speed = speed; this.rainspeed = rainspeed;
      this.x1 = x1; this.x2 = x2; this.x3 = x3; this.x4 = x4; this.x5 = x5;
      this.y1 = y1; this.y2 = y2; this.y3 = y3; this.y4 = y4; this.y5 = y5;
      this.radius = radius;
      this.c = c;
      
    };
    
    void display(){
      fill(c);
      ellipse(x1, y1, radius, radius); ellipse(x2, y1, radius, radius); ellipse(x3, y1, radius, radius); ellipse(x4, y1, radius, radius); ellipse(x5, y1, radius, radius);
      ellipse(x1, y2, radius, radius); ellipse(x2, y2, radius, radius); ellipse(x3, y2, radius, radius); ellipse(x4, y2, radius, radius); ellipse(x5, y2, radius, radius);
      ellipse(x1, y3, radius, radius); ellipse(x2, y3, radius, radius); ellipse(x3, y3, radius, radius); ellipse(x4, y3, radius, radius); ellipse(x5, y3, radius, radius);
      ellipse(x1, y4, radius, radius); ellipse(x2, y4, radius, radius); ellipse(x3, y4, radius, radius); ellipse(x4, y4, radius, radius); ellipse(x5, y4, radius, radius);
      ellipse(x1, y5, radius, radius); ellipse(x2, y5, radius, radius); ellipse(x3, y5, radius, radius); ellipse(x4, y5, radius, radius); ellipse(x5, y5, radius, radius);
      
      
      fill(255);
    }  



    void move() {
      x1 -= speed;
      x2 -= speed;
      x3 -= speed;
      x4 -= speed;
      x5 -= speed;
    }
  
}
