class Obstacle {
  float x, y, l, h;
  color c;
  
  Obstacle (float _x, float _y, float _l, float _h, color _c) {
    x = _x;
    y = _y;
    l = _l;
    h = _h;
    c = _c;
  }
  
  // Draws the obstacle
  void display() {
    fill(c);
    stroke(0);
    rect(x, y, l, h);
  }
}
