class ColorDisc extends Snowball {
  color c;
  float h, sides, w, theta = 0;
  
  ColorDisc() {}
  
  ColorDisc(float speed, float x, float y, float z, float rad, float h, float sides, float w, color c) {
    this.speed = speed;
    this.x = x;
    this.y = y;
    this.z = z;
    this.r = rad;
    this.h = h;
    this.sides = sides;
    this.w = w;
    this.c = c;
  }
  
  void display() {
    stroke(0);
    pushMatrix();
    translate(x, y, z);
    rotateZ(theta);
    fill(c);
    float angle = 360 / sides;
    beginShape();
    for (int i = 0; i <= sides; i++) {
      float vertX = cos( radians( i * angle ) ) * r;
      float vertY = sin( radians( i * angle ) ) * r;
      vertex(vertX, vertY, -h/2);        
    }
    endShape(CLOSE);
    beginShape();
    for (int i = 0; i <= sides; i++) {
      float vertX = cos( radians( i * angle ) ) * r;
      float vertY = sin( radians( i * angle ) ) * r;
      vertex(vertX, vertY, h/2);        
    }
    endShape(CLOSE);
    beginShape(TRIANGLE_STRIP);
    for (int i = 0; i <= sides; i++) {
      float vertX = cos( radians( i * angle ) ) * r;
      float vertY = sin( radians( i * angle ) ) * r;
      vertex(vertX, vertY, h/2); 
      vertex(vertX, vertY, -h/2); 
    }
    endShape(CLOSE);
    popMatrix();
  }
  
  void rotate() {
    theta += w;
  }
}
