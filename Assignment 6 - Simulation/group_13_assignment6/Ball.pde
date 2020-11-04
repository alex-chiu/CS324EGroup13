class Ball {
  float r, m, x, y, vx, vy, ax, ay;
  color c;
  
  Ball() {}
  
  // Ball constructor
  Ball(float _x, float _y, float _r, float _m, color _c) {
    x = _x; y = _y;
    vx = 0; vy = 0;
    ax = 0; ay = 0;
    r = _r;
    m = _m;
    c = _c;
  }
  
  // Reset accel
  void resetAccel() {
    ax = 0;
    ay = 0;
  }
  
  // Applies a force to the ball
  void applyForce(float _fx, float _fy) {
    ax += _fx/m;
    ay += _fy/m;
  }
  
  // Checks boundary collisions
  void checkBounds() {
    if (y + r >= height) {
       vy = -0.9 * Math.abs(vy);
       y = height - r;
    }
    if (x + r >= width) {
       vx = -0.9 * Math.abs(vx);
       x = width - r;
    }
    if (x - r <= 0) {
       vx = 0.9 * Math.abs(vx);
       x = r;
    }
  }
  
  // Checks collisions with obstacles
  void checkCollideObstacle(Obstacle o) {
    if ((y + r >= o.y && y + r <= o.y + o.h) && (x >= o.x - r/2 && x <= o.x + o.l + r/2)) {
       vy = -1.0 * Math.abs(vy);
       y = o.y - r;
    }
    else if ((y - r <= o.y + o.h && y - r >= o.y) && (x >= o.x - r/2 && x <= o.x + o.l + r/2)) {
       vy = Math.abs(vy);
    }
    if ((x + r >= o.x && x + r <= o.x + o.l) && (y >= o.y - r/2 && y <= o.y + o.h + r/2)) {
       vx = -1.0 * Math.abs(vx);
    }
    else if ((x - r <= o.x + o.l && x - r >= o.x) && (y >= o.y - r/2 && y <= o.y + o.h + r/2)) {
       vx = Math.abs(vx);
    }
  }
  
  // Checks collisions with other balls
  void checkCollideBall(Ball b) {
    if ((r + b.r)*(r + b.r) > ((b.x - x)*(b.x - x) + (b.y - y)*(b.y - y))) {
      float diffX = b.x - x;
      float diffY = b.y - y;
      float mag = (float)Math.sqrt(diffX*diffX + diffY*diffY);
      
      float[] norm = {diffX / mag, diffY / mag};
      float[] relVel = {b.vx - vx,  b.vy - vy};
      
      float velAlongNorm = norm[0]*relVel[0] + norm[1]*relVel[1];
      
      if (velAlongNorm < 0) {
        float e = 0.8;
        float j = -(1 + e) * velAlongNorm;
        j /= 1 / m + 1 / b.m;
        
        float impulseX = j * norm[0];
        float impulseY = j * norm[1];
        
        vx -= 1/m * impulseX;
        vy -= 1/m * impulseY;
        b.vx += 1/m * impulseX;
        b.vy += 1/m * impulseY;
      }
    }
  }
  
  // Propagates the ball's position/velocity
  void propagate() {
    vx += ax;
    vy += ay;
    x += vx;
    y += vy;
  }
  
  // Draws the ball
  void display() {
    fill(c);
    noStroke();
    ellipseMode(RADIUS);
    ellipse(x, y, r, r);
  }
}
