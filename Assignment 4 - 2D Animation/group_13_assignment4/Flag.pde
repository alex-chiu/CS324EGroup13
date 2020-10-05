class Flag extends Ship {
  float speed,
        flag2x1, flag2x2, flag2x3, flag2y1, flag2y2, flag2width, flag2height,
        flag2vertexx1, flag2vertexx2, flag2vertexx3, flag2vertexx4, flag2vertexx5, flag2vertexx6, flag2vertexx7, flag2vertexx8, flag2vertexx9, flag2vertexx10, flag2vertexx11, flag2vertexx12, flag2vertexx13, flag2vertexx14, flag2vertexx15, flag2vertexx16, flag2vertexx17, flag2vertexx18, flag2vertexx19, flag2vertexx20, flag2vertexx21, flag2vertexx22, flag2vertexx23, flag2vertexx24, 
        flag2vertexy1, flag2vertexy2, flag2vertexy3, flag2vertexy4, flag2vertexy5, flag2vertexy6, flag2vertexy7, flag2vertexy8, flag2vertexy9, flag2vertexy10, flag2vertexy11, flag2vertexy12, flag2vertexy13, flag2vertexy14, flag2vertexy15, flag2vertexy16, flag2vertexy17, flag2vertexy18, flag2vertexy19, flag2vertexy20, flag2vertexy21, flag2vertexy22, flag2vertexy23, flag2vertexy24 
  ;
  
  Flag(){
  }
  
  Flag(float speed, 
       float flag2x1, float flag2x2, float flag2x3, float flag2y1, float flag2y2, float flag2width, float flag2height,
       float flag2vertexx1, float flag2vertexx2, float flag2vertexx3, float flag2vertexx4, float flag2vertexx5, float flag2vertexx6, float flag2vertexx7, float flag2vertexx8, float flag2vertexx9, float flag2vertexx10, float flag2vertexx11, float flag2vertexx12, float flag2vertexx13, float flag2vertexx14, float flag2vertexx15, float flag2vertexx16, float flag2vertexx17, float flag2vertexx18, float flag2vertexx19, float flag2vertexx20, float flag2vertexx21, float flag2vertexx22, float flag2vertexx23, float flag2vertexx24, 
       float flag2vertexy1, float flag2vertexy2, float flag2vertexy3, float flag2vertexy4, float flag2vertexy5, float flag2vertexy6, float flag2vertexy7, float flag2vertexy8, float flag2vertexy9, float flag2vertexy10, float flag2vertexy11, float flag2vertexy12, float flag2vertexy13, float flag2vertexy14, float flag2vertexy15, float flag2vertexy16, float flag2vertexy17, float flag2vertexy18, float flag2vertexy19, float flag2vertexy20, float flag2vertexy21, float flag2vertexy22, float flag2vertexy23, float flag2vertexy24       
             ){
               
    this.speed = speed;
    this.flag2x1 = flag2x1; this.flag2x2 = flag2x2; this.flag2x3 = flag2x3; this.flag2y1 = flag2y1; this.flag2y2 = flag2y2; this.flag2width = flag2width; this.flag2height = flag2height; 
    this.flag2vertexx1 = flag2vertexx1; this.flag2vertexx2 = flag2vertexx2; this.flag2vertexx3 = flag2vertexx3; this.flag2vertexx4 = flag2vertexx4; this.flag2vertexx5 = flag2vertexx5; this.flag2vertexx6 = flag2vertexx6; this.flag2vertexx7 = flag2vertexx7; this.flag2vertexx8 = flag2vertexx8; this.flag2vertexx9 = flag2vertexx9; this.flag2vertexx10 = flag2vertexx10; this.flag2vertexx11 = flag2vertexx11; this.flag2vertexx12 = flag2vertexx12; this.flag2vertexx13 = flag2vertexx13; this.flag2vertexx14 = flag2vertexx14; this.flag2vertexx15 = flag2vertexx15; this.flag2vertexx16 = flag2vertexx16; this.flag2vertexx17 = flag2vertexx17; this.flag2vertexx18 = flag2vertexx18; this.flag2vertexx19 = flag2vertexx19; this.flag2vertexx20 = flag2vertexx20; this.flag2vertexx21 = flag2vertexx21; this.flag2vertexx22 = flag2vertexx22; this.flag2vertexx23 = flag2vertexx23; this.flag2vertexx24 = flag2vertexx24; 
    this.flag2vertexy1 = flag2vertexy1; this.flag2vertexy2 = flag2vertexy2; this.flag2vertexy3 = flag2vertexy3; this.flag2vertexy4 = flag2vertexy4; this.flag2vertexy5 = flag2vertexy5; this.flag2vertexy6 = flag2vertexy6; this.flag2vertexy7 = flag2vertexy7; this.flag2vertexy8 = flag2vertexy8; this.flag2vertexy9 = flag2vertexy9; this.flag2vertexy10 = flag2vertexy10; this.flag2vertexy11 = flag2vertexy11; this.flag2vertexy12 = flag2vertexy12; this.flag2vertexy13 = flag2vertexy13; this.flag2vertexy14 = flag2vertexy14; this.flag2vertexy15 = flag2vertexy15; this.flag2vertexy16 = flag2vertexy16; this.flag2vertexy17 = flag2vertexy17; this.flag2vertexy18 = flag2vertexy18; this.flag2vertexy19 = flag2vertexy19; this.flag2vertexy20 = flag2vertexy20; this.flag2vertexy21 = flag2vertexy21; this.flag2vertexy22 = flag2vertexy22; this.flag2vertexy23 = flag2vertexy23; this.flag2vertexy24 = flag2vertexy24;
  }
  
  void display() {
 //flag2
    stroke(0);
    fill(0);
    rect(flag2x1,flag2y1,flag2width,flag2height);
    rect(flag2x2,flag2y2,flag2width,flag2height);
    rect(flag2x3,flag2y1,flag2width,flag2height);
    fill(0);
    beginShape();
    curveVertex(flag2vertexx1, flag2vertexy1); 
    curveVertex(flag2vertexx1, flag2vertexy2);
    curveVertex(flag2vertexx2, flag2vertexy2);
    curveVertex(flag2vertexx2, flag2vertexy1);
    endShape(CLOSE);
    beginShape();
    curveVertex(flag2vertexx3, flag2vertexy3); 
    curveVertex(flag2vertexx3, flag2vertexy4);
    curveVertex(flag2vertexx4, flag2vertexy4);
    curveVertex(flag2vertexx4, flag2vertexy3);
    endShape(CLOSE);
    fill(#00ffff); //background color
    noStroke();
    beginShape();
    curveVertex(flag2vertexx5, flag2vertexy5); 
    curveVertex(flag2vertexx5, flag2vertexy6);
    curveVertex(flag2vertexx6, flag2vertexy6);
    curveVertex(flag2vertexx6, flag2vertexy5);
    endShape(CLOSE);
    beginShape();
    curveVertex(flag2vertexx7, flag2vertexy7); 
    curveVertex(flag2vertexx7, flag2vertexy8);
    curveVertex(flag2vertexx8, flag2vertexy8);
    curveVertex(flag2vertexx8, flag2vertexy7);
    endShape(CLOSE);
    stroke(0);
    fill(0);
    beginShape();
    curveVertex(flag2vertexx9, flag2vertexy9); 
    curveVertex(flag2vertexx9, flag2vertexy10);
    curveVertex(flag2vertexx10, flag2vertexy10);
    curveVertex(flag2vertexx10, flag2vertexy9);
    endShape(CLOSE);
    beginShape();
    curveVertex(flag2vertexx11, flag2vertexy11); 
    curveVertex(flag2vertexx11, flag2vertexy12);
    curveVertex(flag2vertexx12, flag2vertexy12);
    curveVertex(flag2vertexx12, flag2vertexy11);
    endShape(CLOSE);
    fill(#00ffff); //background color #00ffff
    noStroke();
    beginShape();
    curveVertex(flag2vertexx13, flag2vertexy13); 
    curveVertex(flag2vertexx13, flag2vertexy14);
    curveVertex(flag2vertexx14, flag2vertexy14);
    curveVertex(flag2vertexx14, flag2vertexy13);
    endShape(CLOSE);
    beginShape();
    curveVertex(flag2vertexx15, flag2vertexy15); 
    curveVertex(flag2vertexx15, flag2vertexy16);
    curveVertex(flag2vertexx16, flag2vertexy16);
    curveVertex(flag2vertexx16, flag2vertexy15);
    endShape(CLOSE);
    stroke(0);
    fill(0);
    beginShape();
    curveVertex(flag2vertexx17, flag2vertexy17); 
    curveVertex(flag2vertexx17, flag2vertexy18);
    curveVertex(flag2vertexx18, flag2vertexy18);
    curveVertex(flag2vertexx18, flag2vertexy17);
    endShape(CLOSE);
    beginShape();
    curveVertex(flag2vertexx19, flag2vertexy19); 
    curveVertex(flag2vertexx19, flag2vertexy20);
    curveVertex(flag2vertexx20, flag2vertexy20);
    curveVertex(flag2vertexx20, flag2vertexy19);
    endShape(CLOSE);
    fill(#00ffff); //backgroud #00ffff
    noStroke();
    beginShape();
    curveVertex(flag2vertexx21, flag2vertexy21); 
    curveVertex(flag2vertexx21, flag2vertexy22);
    curveVertex(flag2vertexx22, flag2vertexy22);
    curveVertex(flag2vertexx22, flag2vertexy21);
    endShape(CLOSE);
    beginShape();
    curveVertex(flag2vertexx23, flag2vertexy23); 
    curveVertex(flag2vertexx23, flag2vertexy24);
    curveVertex(flag2vertexx24, flag2vertexy24);
    curveVertex(flag2vertexx24, flag2vertexy23);
    endShape(CLOSE);
    stroke(0);

  }
  
  void move() {
    flag2x1 += speed; flag2x2 += speed; flag2x3 += speed;
    flag2vertexx1 += speed; flag2vertexx2 += speed; flag2vertexx3 += speed; flag2vertexx4 += speed; flag2vertexx5 += speed; flag2vertexx6 += speed; flag2vertexx7 += speed; flag2vertexx8 += speed; flag2vertexx9 += speed; flag2vertexx10 += speed; flag2vertexx11 += speed; flag2vertexx12 += speed; flag2vertexx13 += speed; flag2vertexx14 += speed; flag2vertexx15 += speed; flag2vertexx16 += speed; flag2vertexx17 += speed; flag2vertexx18 += speed; flag2vertexx19 += speed; flag2vertexx20 += speed; flag2vertexx21 += speed; flag2vertexx22 += speed; flag2vertexx23 += speed; flag2vertexx24 += speed; 
    
  }

}
