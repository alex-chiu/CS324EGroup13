class Player {
  float x, y, vx, vy, ms;
  PImage ship = loadImage("spaceship.png");
  PImage shipMoving = loadImage("spaceship-moving.png");
  
  // Animation
  int numFrames = 4;
  PImage[] x_sprite;
  PImage[] x_sprite2;
  
  // Bullets
  ArrayList<Bullet> bullets = new ArrayList<Bullet>();
  
  // Constructor
  Player (float _x, float _y) {
    x = _x;
    y = _y;
    vx = 0;
    vy = 0;
    ms = 5;
    ship.resize(50, 50);
    shipMoving.resize(50, 50);
    
    // Setup Move Left Animation
    x_sprite = new PImage[numFrames];
    for(int i = 0; i < x_sprite.length; i++){
      String imageName = "spaceship-moving-left-" + nf(i+1, 2) + ".png";
      x_sprite[i] = loadImage(imageName);
      x_sprite[i].resize(50,50);
    }
    
    // Setup Move Right Animation
    x_sprite2 = new PImage[numFrames];
    for(int i = 0; i < x_sprite2.length; i++){
      String imageName = "spaceship-moving-right-" + nf(i+1, 2) + ".png";
      x_sprite2[i] = loadImage(imageName);
      x_sprite2[i].resize(50,50);
    }
    
  }
  
  // Draws Player Ship
  void display() {
    imageMode(CENTER);
    if (vx < 0) {
      int frame = (frameCount / 10) % numFrames; // Number Controls Rotation Speed: Higher = Slower Rotation, Lower = Faster Rotation
      image(x_sprite[frame], x, y);
    }
    else if (vx > 0) {
      int frame = (frameCount / 10) % numFrames; // Number Controls Rotation Speed: Higher = Slower Rotation, Lower = Faster Rotation
      image(x_sprite2[frame], x, y);
    }
    else {
      imageMode(CENTER);
      image(shipMoving, x, y);
    }
  }
  
  // Moves Ship
  void move() {
    x += vx;
    y += vy;
    
    if (x <= 25) {
      x = 25;
    }
    else if (x >= width - 25) {
      x = width - 25;
    }
    if (y <= 25) {
      y = 25; 
    }
    else if (y >= height - 25) {
      y = height - 25;
    }
  }
  
  // Fires a Bullet
  void fire() {
    Bullet b = new Bullet(x, y - 25, -10, false);
    bullets.add(b);
  }
  
  // Updates Bullet Positions
  void updateBullets() {
    for (int i = 0; i < bullets.size(); i++) {
      bullets.get(i).move();
      if ((bullets.get(i).y <= 0) || !bullets.get(i).visible) {
        bullets.remove(i);
        break;
      }
      bullets.get(i).display();
    }
  }
}
