class Player {
  float x, y, vx, vy, ms;
  PImage ship = loadImage("spaceship-moving.png");
  
  // Animation
  int numFrames = 4;
  PImage []x_sprite ;
  PImage []x_sprite2;
  
  // Constructor
  Player (float _x, float _y) {
    x = _x;
    y = _y;
    vx = 0;
    vy = 0;
    ms = 5;
    ship.resize(50, 50);
    
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
    image(ship, x, y);
  }
  
  void displayMovingLeft(){
    int frame = (frameCount / 10) % numFrames; //change number after divide sign for faster/slower rotation: higher number = slower rotation, lower number = higher rotation
    image(x_sprite[frame], x, y);
  }
  
    void displayMovingRight(){
    int frame = (frameCount / 10) % numFrames; //change number after divide sign for faster/slower rotation: higher number = slower rotation, lower number = higher rotation
    image(x_sprite2[frame], x, y);
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
}
