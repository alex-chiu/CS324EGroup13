class Earth {
  PImage img = loadImage("earth.png");
  float x, y, radius;
  
  // Constructor
  Earth(float _x, float _y, float _radius) {
    x = _x;
    y = _y;
    radius = _radius;
    img.resize(75, 75);
  }
  
  // Draws Earth
  void display() {
    imageMode(CENTER);
    image(img, x, y);
  }
}
