class Moon {
  float speed, x, y, orig_y, w, xoffset, h;
  
  Moon (float spd, float x, float y, float w, float xoffset) {
    this.speed = spd;
    this.x = x;
    this.y = y;
    this.orig_y = y;
    this.w = w;
    this.xoffset = xoffset;
  }
  
  void display() {
    noStroke();
    pushMatrix();
    fill(#FEFCD7);
    translate(x, y);
    rotate(-PI/2);
    arc(0, 0, 70, 70, 0, PI*4);
    fill(0);
    arc(18, 18, 70, 70, 0, PI*4);
    popMatrix();
    stroke(0);
  }
  
  void move() {
    x += this.speed;
    y = this.orig_y * (1 - sin(PI * (this.x/this.w)));
  }
}
