class MovingObstacle extends Obstacle {
  float vx, vy;
  
  MovingObstacle(float _x, float _y, float _l, float _h, color _c) {
    super(_x, _y, _l, _h, _c); 
    vx = 0;
    vy = 0;
  }
  
  void propagateObs() {
    x += vx;
    y += vy;
  }
}
