float y;
float vy;
float m = 5.0;
float ry = 250;
float ks = 0.0005;
float kd = 0.1;
Ball b;
Ball b2;
boolean ballOnElevator = false;
boolean gotOffElevator = false;
boolean onLongPlatform = false;
boolean onFirstRamp = false;
boolean hitFirstWall = false;
boolean onSecondRamp = false;
color ballColor = 210;
PImage tex;
PShape sphere;
float angle;

void setup() {
 size(700, 600, P3D);
 b = new Ball(-20, 568, 20, 0);
  noStroke();
  tex = loadImage("hamster1.png");
  sphere = createShape(SPHERE, 10);
  sphere.setTexture(tex);
  angle = 0;
  textureMode(NORMAL);
  textureWrap(REPEAT);
}

void draw() {
 background(210);
 
  pushMatrix();
  translate(110,200,0);
  rotateY(angle);
  angle += 0.10;
  shape(sphere);
  popMatrix();
  
 float f = -(ks * (y - ry)); // float f = -((ks * (y - ry)) + kd*vy);
 float a = f/m;
 vy = vy + a;
 y += vy;
 rect(0, y, 100, 20);
 rect(0, y + 80, 100, 20);
 b2 = new Ball(45, y + 69, 20, ballColor);
 rect(100, 80, 500, 20);
 rect(100, 100, 20, 499);
 quad(699, 200, 200, 250, 699, 250, 699, 200);
 quad(120, 400, 120, 500, 600, 500, 120, 400);
 //ellipse(45, 568, 20, 20);
  b2.display();
  b.display();

 if (y >= 498 && ballOnElevator == false){
   if (b.x < 45)
      b.moveRight(); 
 }
 if (b.x >= 35 && gotOffElevator == false){
    ballOnElevator = true;
    ballColor = 0;
    b.x = -100;
 }
 if (b2.y <= 70 && ballOnElevator == true && onLongPlatform == false){
   gotOffElevator = true;
   b.x = 30;
   b.y = 70;
   b.moveRight();
   ballColor = 210;
 }
 if (gotOffElevator == true && onLongPlatform == false){
   if (b.x < 600)
     b.moveRightFaster();
 }
 if (b.x >= 599){
   onLongPlatform = true;
 }
 if (b.x >= 599 && b.x <= 655 && onFirstRamp == false && b.y < 300){
   b.moveDown();
   b.moveRightSlower();
 }
 if (b.x == 655){
   onFirstRamp = true;
 }
 if (b.x >= 131 && onFirstRamp == true && b.y < 251){
   b.moveLeft();
   b.moveDownFirstRamp();
 }
 if (b.x == 129) {
   onFirstRamp = false;
   hitFirstWall = true;
 }
 if (b.x <= 310 && hitFirstWall == true){
   b.moveRightSlower();
   b.moveDownSlower();
 }
 if (b.x == 311 && hitFirstWall == true){
   onSecondRamp = true;
 }
 if (onSecondRamp == true){
   hitFirstWall = false;
   b.moveRightSlower();
   b.moveDownSecondRamp();
 }
 if (b.x >= 705){
   onSecondRamp = false;
   ballOnElevator = false;
   gotOffElevator = false;
   onLongPlatform = false;
   onFirstRamp = false;
   onSecondRamp = false;
   b.x = -20;
   b.y = 568;
 }
}
