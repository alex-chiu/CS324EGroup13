class Cloud {
  float speed, c1, c2, c3, c4, c5, c6, c7, c1x, c2x, c4x, c5x, c6x;
  Cloud() {
  };
  
  Cloud(float speed, float c1, float c2, float c3, float c4, float c5, float c6, float c7,
        float c1x, float c2x, float c4x, float c5x, float c6x) {
    this.speed = speed; this.c1 = c1; this.c2 = c2; this.c3 = c3; this.c4 = c4; this.c5 = c5; this.c6 = c6; this.c7 = c7; 
    this.c1x = c1x; this.c2x = c2x; this.c4x = c4x; this.c5x = c5x; this.c6x = c6x; 
  };
  
  void display() {
    //rect(x, y, w, h);
    
//start of cloud
//c1 = 200 , c2 = 250, c3 = 150, c4 = 300, c5 = 100, c6 = 400, c7 = 50
//c1x = 200, c2x = 250
  beginShape();
  curveVertex(c1x, c2); 
  curveVertex(c1x, c3);
  curveVertex(c2x, c3);
  curveVertex(c2x, c2);
  endShape();
  
  beginShape();
  curveVertex(c2x, c2); 
  curveVertex(c2x, c3);
  curveVertex(c4x, c3);
  curveVertex(c4x, c2);
  endShape();
    
  beginShape();
  curveVertex(c5x, c3); 
  curveVertex(c4x, c3);
  curveVertex(c4x, c1);
  curveVertex(c5x, c3);
  endShape();
     
  beginShape();
  curveVertex(c4x, c5); 
  curveVertex(c4x, c1);
  curveVertex(c2x, c1);
  curveVertex(c2x, c5);
  endShape();
       
  beginShape();
  curveVertex(c2x, c5); 
  curveVertex(c2x, c1);
  curveVertex(c1x, c1);
  curveVertex(c1x, c5);
  endShape();
   
  beginShape();
  curveVertex(c6x, c1); 
  curveVertex(c1x, c1);
  curveVertex(c1x, c3);
  curveVertex(c6x, c3);
  endShape();    

  noStroke();
  rect(c1x, c3, c5, c7);
  stroke(0);
//end of cloud
  
  }
  
  void move() {
    c1x -= speed;
    c2x -= speed;
    c4x -= speed;
    c5x -= speed;
    c6x -= speed;

  }
}
