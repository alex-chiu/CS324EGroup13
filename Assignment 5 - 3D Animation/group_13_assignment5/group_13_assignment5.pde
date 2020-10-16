Person steve;
Snowball snowball;
Snowball snowball2;
Snowman frosty;
PShape man;

boolean switchLeftRight = false;
boolean switchUpDown = false;
boolean switchFrontBack = false;

float theta = 0;

void setup() {
    size(700, 600, P3D);
    
    man = loadShape("IronMan.obj");
      
    steve = new Person (
    // translate1 - translate6
    width/2, height/2 - 100, - 100,
    0, 85, 0,
    0, 0, 60,
    0, 0, -120,
    0, 130, 40,
    0, 0, 40,
    // box1 - box6
    50,
    50, 120, 75,
    30, 120, 40,
    30, 120, 40,
    50, 140, 40,
    50, 140, 40,
    // color1 - color3
    255, 255, 255
    );
    
    snowball = new Snowball(
    // speed
    1,
    // sphere1 - sphere3
    0, 0, 0, 25,
    0, -125, 0, 50,
    0, -70, 0, 25,
    // color
    255
    );
    
    snowball2 = new Snowball(
    // speed
    1,
    // sphere1 - sphere3
    width/2, height/2, 0, 25,
    0, -125, 0, 50,
    0, -70, 0, 25,
    // color
    255
    );
    
    frosty = new Snowman(
    // speed
    1,
    // sphere1 - sphere3
    0, 0, 0, 100,
    0, -125, 0, 50,
    0, -70, 0, 25,
    // color
    255
    );
  
}
  
void draw(){
    background(0);
    lights();
    
    // Rotating Camera
    if (mouseX <= width/3) {
      theta -= 0.01;
    }
    else if (mouseX >= 2*width/3) {
      theta += 0.01;
    }
    camera(width/2 + 2000*sin(theta), height/2, 2000*cos(theta), width/2, height/2, 0, 0, 1, 0);

    steve.display();
    
    if (steve.translate1x1 == 1600)
      switchLeftRight = true;
    if (steve.translate1x1 < 1600 && switchLeftRight == false)
      steve.moveRight();    
    if (steve.translate1x1 > -900 && switchLeftRight == true)
      steve.moveLeft();
    if (steve.translate1x1 == -900)
      switchLeftRight = false;
      
    snowball.display();
    
    if (snowball.sphere1y == 1600)
      switchUpDown = true;
    if (snowball.sphere1y < 1600 && switchUpDown == false)
      snowball.moveDown();    
    if (snowball.sphere1y > -900 && switchUpDown == true)
      snowball.moveUp();
    if (snowball.sphere1y == -900)
      switchUpDown = false;
    
    snowball2.display();
    
    if (snowball2.sphere1z == 1600)
      switchFrontBack = true;
    if (snowball2.sphere1z < 1600 && switchFrontBack == false)
      snowball2.moveFront();    
    if (snowball2.sphere1z > -900 && switchFrontBack == true)
      snowball2.moveBack();
    if (snowball2.sphere1z == -900)
      switchFrontBack = false;
    
    frosty.display();
    
    if (frosty.sphere1x == 1600)
      switchLeftRight = true;
    if (frosty.sphere1x < 1600 && switchLeftRight == false)
      frosty.moveRight();    
    if (frosty.sphere1x > -900 && switchLeftRight == true)
      frosty.moveLeft();
    if (frosty.sphere1x == -900)
      switchLeftRight = false;
      
  // Draw Box
  stroke(255);
  pushMatrix();
  translate(width/2, height/2, 0);
  noFill();
  box(1600);
  popMatrix();
  
  // Draw Iron Man
  noStroke();
  pushMatrix();
  translate(width/2, height/2, 600);
  rotateZ(PI);
  shape(man, 0, 0);
  popMatrix();
}
  

  
