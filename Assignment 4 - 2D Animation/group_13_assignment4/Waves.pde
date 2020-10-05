class Waves extends Ship {
  float speed,
        wavex1, wavex2, wavex3, wavex4, wavex5, wavex6, wavex7, wavex8, wavex9, wavex10, wavex11, wavex12, wavex13, wavex14, wavex15, wavex16, wavex17, wavex18, wavex19, wavex20, wavex21, wavex22, wavex23, wavex24, 
        wavey1, wavey2,
        wavebottomx1, wavebottomy1, wavebottomwidth, wavebottomheight;
  ;
  
  Waves(){
  }
  
  Waves(float speed, 
        float wavex1, float wavex2, float wavex3, float wavex4, float wavex5, float wavex6, float wavex7, float wavex8, float wavex9, float wavex10, float wavex11, float wavex12, float wavex13, float wavex14, float wavex15, float wavex16, float wavex17, float wavex18, float wavex19, float wavex20, float wavex21, float wavex22, float wavex23, float wavex24, 
        float wavey1, float wavey2,
        float wavebottomx1, float wavebottomy1, float wavebottomwidth, float wavebottomheight
      ){
               
    this.speed = speed;
    this.wavex1 = wavex1; this.wavex2 = wavex2; this.wavex3 = wavex3; this.wavex4 = wavex4; this.wavex5 = wavex5; this.wavex6 = wavex6; this.wavex7 = wavex7; this.wavex8 = wavex8; this.wavex9 = wavex9; this.wavex10 = wavex10; this.wavex11 = wavex11; this.wavex12 = wavex12; this.wavex13 = wavex13; this.wavex14 = wavex14; this.wavex15 = wavex15; this.wavex16 = wavex16; this.wavex17 = wavex17; this.wavex18 = wavex18; this.wavex19 = wavex19; this.wavex20 = wavex20; this.wavex21 = wavex21; this.wavex22 = wavex22; this.wavex23 = wavex23; this.wavex24 = wavex24; 
    this.wavey1 = wavey1; this.wavey2 = wavey2; 
    this.wavebottomx1 = wavebottomx1; this.wavebottomy1 = wavebottomy1; this.wavebottomwidth = wavebottomwidth; this.wavebottomheight = wavebottomheight;
  }
  
  void display() {
 //waves
    fill(#0000ff);
    noStroke();
    stroke(#0000ff);
    beginShape();
    curveVertex(wavex1, wavey1); 
    curveVertex(wavex2, wavey1);
    curveVertex(wavex2, wavey2);
    curveVertex(wavex1, wavey2);
    endShape();
    beginShape();
    curveVertex(wavex3, wavey1); 
    curveVertex(wavex4, wavey1);
    curveVertex(wavex4, wavey2);
    curveVertex(wavex3, wavey2);
    endShape();
    beginShape();
    curveVertex(wavex5, wavey1); 
    curveVertex(wavex6, wavey1);
    curveVertex(wavex6, wavey2);
    curveVertex(wavex5, wavey2);
    endShape();
    beginShape();
    curveVertex(wavex7, wavey1); 
    curveVertex(wavex8, wavey1);
    curveVertex(wavex8, wavey2);
    curveVertex(wavex7, wavey2);
    endShape();
    beginShape();
    curveVertex(wavex9, wavey1); 
    curveVertex(wavex10, wavey1);
    curveVertex(wavex10, wavey2);
    curveVertex(wavex9, wavey2);
    endShape();
    beginShape();
    curveVertex(wavex11, wavey1); 
    curveVertex(wavex12, wavey1);
    curveVertex(wavex12, wavey2);
    curveVertex(wavex11, wavey2);
    endShape();
    beginShape();
    curveVertex(wavex13, wavey1); 
    curveVertex(wavex14, wavey1);
    curveVertex(wavex14, wavey2);
    curveVertex(wavex13, wavey2);
    endShape();
    beginShape();
    curveVertex(wavex15, wavey1); 
    curveVertex(wavex16, wavey1);
    curveVertex(wavex16, wavey2);
    curveVertex(wavex15, wavey2);
    endShape();
    beginShape();
    curveVertex(wavex17, wavey1); 
    curveVertex(wavex18, wavey1);
    curveVertex(wavex18, wavey2);
    curveVertex(wavex17, wavey2);
    endShape();
    beginShape();
    curveVertex(wavex19, wavey1); 
    curveVertex(wavex20, wavey1);
    curveVertex(wavex20, wavey2);
    curveVertex(wavex19, wavey2);
    endShape();
    beginShape();
    curveVertex(wavex21, wavey1); 
    curveVertex(wavex22, wavey1);
    curveVertex(wavex22, wavey2);
    curveVertex(wavex21, wavey2);
    endShape();
    beginShape();
    curveVertex(wavex23, wavey1); 
    curveVertex(wavex24, wavey1);
    curveVertex(wavex24, wavey2);
    curveVertex(wavex23, wavey2);
    endShape();
    rect(wavebottomx1,wavebottomy1,wavebottomwidth,wavebottomheight);
    stroke(0);
    fill(255);
  }
  
  void move() {
    wavex1 += speed; wavex2 += speed; wavex3 += speed; wavex4 += speed; wavex5 += speed; wavex6 += speed; wavex7 += speed; wavex8 += speed; wavex9 += speed; wavex10 += speed; wavex11 += speed; wavex12 += speed; wavex13 += speed; wavex14 += speed; wavex15 += speed; wavex16 += speed; wavex17 += speed; wavex18 += speed; wavex19 += speed; wavex20 += speed; wavex21 += speed; wavex22 += speed; wavex23 += speed; wavex24 += speed; 
    wavebottomx1 += speed; 
  }
 
}
