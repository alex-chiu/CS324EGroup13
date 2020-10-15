class Person{
  float translate1x1, translate1x2, translate1x3, 
        translate2x1, translate2x2, translate2x3, 
        translate3x1, translate3x2, translate3x3, 
        translate4x1, translate4x2, translate4x3, 
        translate5x1, translate5x2, translate5x3, 
        translate6x1, translate6x2, translate6x3, 
        box1x1,
        box2x1, box2x2, box2x3, 
        box3x1, box3x2, box3x3, 
        box4x1, box4x2, box4x3, 
        box5x1, box5x2, box5x3, 
        box6x1, box6x2, box6x3;
  color c1, c2, c3;

  Person(){
  }
  
  Person(float translate1x1, float translate1x2, float translate1x3,
         float translate2x1, float translate2x2, float translate2x3,
         float translate3x1, float translate3x2, float translate3x3,
         float translate4x1, float translate4x2, float translate4x3,
         float translate5x1, float translate5x2, float translate5x3,
         float translate6x1, float translate6x2, float translate6x3,
         float  box1x1,
         float  box2x1, float  box2x2, float  box2x3, 
         float  box3x1, float  box3x2, float  box3x3, 
         float  box4x1, float  box4x2, float  box4x3, 
         float  box5x1, float  box5x2, float  box5x3, 
         float  box6x1, float  box6x2, float  box6x3,
         color c1, color c2, color c3
  ){
    this.translate1x1 = translate1x1; this.translate1x2 = translate1x2; this.translate1x3 = translate1x3; 
    this.translate2x1 = translate2x1; this.translate2x2 = translate2x2; this.translate2x3 = translate2x3; 
    this.translate3x1 = translate3x1; this.translate3x2 = translate3x2; this.translate3x3 = translate3x3; 
    this.translate4x1 = translate4x1; this.translate4x2 = translate4x2; this.translate4x3 = translate4x3; 
    this.translate5x1 = translate5x1; this.translate5x2 = translate5x2; this.translate5x3 = translate5x3; 
    this.translate6x1 = translate6x1; this.translate6x2 = translate6x2; this.translate6x3 = translate6x3; 
    this.box1x1 = box1x1;
    this.box2x1 = box2x1; this.box2x2 = box2x2; this.box2x3 = box2x3; 
    this.box3x1 = box3x1; this.box3x2 = box3x2; this.box3x3 = box3x3; 
    this.box4x1 = box4x1; this.box4x2 = box4x2; this.box4x3 = box4x3; 
    this.box5x1 = box5x1; this.box5x2 = box5x2; this.box5x3 = box5x3; 
    this.box6x1 = box6x1; this.box6x2 = box6x2; this.box6x3 = box6x3; 
    this.c1 = color(255); this.c2 = color(255,0,0); this.c3 = color(0,0,255);
  }
  
  void display(){
    /*
    pushMatrix();
    // head
    translate(width/2, height/2 - 100, -100);
    fill(255);
    stroke(0);
    box(50);
    
    // body
    translate(0, 85, 0);
    fill(255,0,0);
    box(50,120,75);
    
    // left arm
    translate(0, 0, 60);
    fill(0,0,255);
    box(30,120,40);
    
    // right arm
    translate(0, 0, -120);
    fill(0,0,255);
    box(30,120,40);
    
    // right leg
    translate(0, 130, 40);
    fill(255);
    box(50,140,40);
    
    // left leg
    translate(0, 0, 40);
    fill(255);
    stroke(0);
    box(50,140,40);
    popMatrix();
    */
    
    pushMatrix();
    // head
    translate(translate1x1, translate1x2, translate1x3);
    fill(c1);
    stroke(0);
    box(box1x1);
    
    // body
    translate(translate2x1, translate2x2, translate2x3);
    fill(c2);
    box(box2x1,box2x2,box2x3);
    
    // left arm
    translate(translate3x1, translate3x2, translate3x3);
    fill(c3);
    box(box3x1,box3x2,box3x3);
    
    // right arm
    translate(translate4x1, translate4x2, translate4x3);
    fill(c3);
    box(box4x1,box4x2,box4x3);
    
    // right leg
    translate(translate5x1, translate5x2, translate5x3);
    fill(c1);
    box(box5x1,box5x2,box5x3);
    
    // left leg
    translate(translate6x1, translate6x2, translate6x3);
    fill(c1);
    stroke(0);
    box(box6x1,box6x2,box6x3);
    popMatrix();
  }
  
  void move(){
    translate1x1 += 20;
  }
   void moveRight() {
    translate1x1 += 10; 
  }
  
  void moveLeft() {
    translate1x1 -= 10; 
  }
  
  void moveUp() {
    translate1x2 -= 20; 
  }
  
  void moveDown() {
    translate1x2 += 20; 
  }
  
  void moveFront() {
    translate1x3 += 20; 
  }
  
  void moveBack() {
    translate1x3 -= 20; 
  }
}
