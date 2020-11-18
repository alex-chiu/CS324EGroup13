class Star {
  float x, y, vx, vy;
  
  // Constructor
  Star (float _x, float _y, float _vx, float _vy) {
    x = _x;
    y = _y;
    vx = _vx;
    vy = _vy;
  }
  
  // Draws Star
  void display() {
    stroke(255);
    strokeWeight(2);
    point(x, y);
  }
  
  void move() {
    x += vx;
    y += vy; 
    
    if (y <= 0) {
      y = height; 
    }
  }
}
