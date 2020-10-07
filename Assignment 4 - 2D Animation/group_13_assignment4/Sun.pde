class Sun {
  float speed, x, orig_y, y, w;
  
  Sun (float spd, float x, float y, float w) {
    this.speed = spd;
    this.x = x;
    this.orig_y = y;
    this.y = y;
    this.w = w;
  }
  
  void display() {
    fill(#FDB813);
    ellipse(x, y, 60, 60);
  }
  
  void move() {
    x += this.speed;
    y = this.orig_y * (1 - sin(PI * (this.x/this.w)));
  }
}
