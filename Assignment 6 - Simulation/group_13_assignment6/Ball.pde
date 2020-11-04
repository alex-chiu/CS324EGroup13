// Ball class
// Implements full collision detection

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
  
  // Reset acceleration
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
    if (y + r >= height) { // Bottom of screen
       vy = -0.9 * Math.abs(vy);
       y = height - r;
    }
    if (x + r >= width) { // Right side of screen
       vx = -0.9 * Math.abs(vx);
       x = width - r;
    }
    if (x - r <= 0) { // Left side of screen
       vx = 0.9 * Math.abs(vx);
       x = r;
    }
  }
  
  // Checks collisions with obstacles
  void checkCollideObstacle(Obstacle o) {
    // Collisions from above
    if ((y + r >= o.y && y + r <= o.y + o.h) && (x >= o.x - r/2 && x <= o.x + o.l + r/2)) {
       vy = -1.0 * Math.abs(vy);
       y = o.y - r;
    }
    // Collisions from below
    else if ((y - r <= o.y + o.h && y - r >= o.y) && (x >= o.x - r/2 && x <= o.x + o.l + r/2)) {
       vy = Math.abs(vy);
    }
    // Collisions from left
    if ((x + r >= o.x && x + r <= o.x + o.l) && (y >= o.y - r/2 && y <= o.y + o.h + r/2)) {
       vx = -1.0 * Math.abs(vx);
    }
    // Collisions from right
    else if ((x - r <= o.x + o.l && x - r >= o.x) && (y >= o.y - r/2 && y <= o.y + o.h + r/2)) {
       vx = Math.abs(vx);
    }
  }
  
  // Checks collisions with other balls
  void checkCollideBall(Ball b) {
    // Checks if two balls are close enough to overlap
    if ((r + b.r)*(r + b.r) > ((b.x - x)*(b.x - x) + (b.y - y)*(b.y - y))) {
      // Calculates the magnitude of the distance between the center of eacb ball
      float diffX = b.x - x;
      float diffY = b.y - y;
      float mag = (float)Math.sqrt(diffX*diffX + diffY*diffY);
      
      // Creates a unit normal vector for the collision between balls
      float[] norm = {diffX / mag, diffY / mag};
      
      // Finds the relative velocity between each ball
      float[] relVel = {b.vx - vx,  b.vy - vy};
      
      // Finds the amount of the relative velocity that is in the normal direction
      float velAlongNorm = norm[0]*relVel[0] + norm[1]*relVel[1];
      
      // Checks if the two balls are heading towards each other
      if (velAlongNorm < 0) {
        // Constant of restitution determines how much each ball ricochets
        float e = 0.8;
        
        // Finds impulse caused by collision
        float j = -(1 + e) * velAlongNorm;
        j /= 1 / m + 1 / b.m;
        
        // Shifts each impulse in the normal direction for both x and y
        float impulseX = j * norm[0];
        float impulseY = j * norm[1];
        
        // Applies impulse to each ball's velocity
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
