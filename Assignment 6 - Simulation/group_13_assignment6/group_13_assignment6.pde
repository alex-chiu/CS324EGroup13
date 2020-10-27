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
color ballColor = 210;

void setup() {
 size(700, 600);
 b = new Ball(-20, 568, 20, 0);
}

void draw() {
 background(210);
 float f = -(ks * (y - ry)); // float f = -((ks * (y - ry)) + kd*vy);
 float a = f/m;
 vy = vy + a;
 y += vy;
 rect(0, y, 100, 20);
 rect(0, y + 80, 100, 20);
 b2 = new Ball(45, y + 69, 20, ballColor);
 rect(100, 80, 500, 20);
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
   if (b.x < 500)
     b.moveRightFaster();
 }
 if (b.x >= 499){
   onLongPlatform = true;
 }
 
}
