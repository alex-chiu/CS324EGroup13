class Ship {
  float speed, 
        shipvertexx1, shipvertexx2, shipvertexx3, shipvertexx4, shipvertexx5, shipvertexy1, shipvertexy2, shipvertexy3, shipvertexy4, 
        shiplinex1, shiplinex2, shiplinex3, shiplinex4, shiplinex5, shiplinex6, shipliney1, shipliney2, shipliney3,
        cannonx1, cannonx2, cannonx3, cannony1, cannonradius1, cannonradius2, 
        mastx1, mastx2, mastx3, masty1, masty2, masty3,
        flagx1, flagx2, flagx3, flagy1, flagy2, flagwidth, flagheight,
        logox1, logox2, logox3, logoy1, logoy2, logoradius,
        logolinex1, logolinex2, logolinex3, logolinex4, logolinex5, logolinex6, logoliney1, logoliney2, logoliney3,
        flagvertexx1, flagvertexx2, flagvertexx3, flagvertexx4, flagvertexx5, flagvertexx6, flagvertexx7, flagvertexx8, flagvertexx9, flagvertexx10, flagvertexx11, flagvertexx12, 
        flagvertexy1, flagvertexy2, flagvertexy3, flagvertexy4,
        flag2x1, flag2x2, flag2x3, flag2y1, flag2y2, flag2width, flag2height,
        flag2vertexx1, flag2vertexx2, flag2vertexx3, flag2vertexx4, flag2vertexx5, flag2vertexx6, flag2vertexx7, flag2vertexx8, flag2vertexx9, flag2vertexx10, flag2vertexx11, flag2vertexx12, flag2vertexx13, flag2vertexx14, flag2vertexx15, flag2vertexx16, flag2vertexx17, flag2vertexx18, flag2vertexx19, flag2vertexx20, flag2vertexx21, flag2vertexx22, flag2vertexx23, flag2vertexx24, 
        flag2vertexy1, flag2vertexy2, flag2vertexy3, flag2vertexy4, flag2vertexy5, flag2vertexy6, flag2vertexy7, flag2vertexy8, flag2vertexy9, flag2vertexy10, flag2vertexy11, flag2vertexy12, flag2vertexy13, flag2vertexy14, flag2vertexy15, flag2vertexy16, flag2vertexy17, flag2vertexy18, flag2vertexy19, flag2vertexy20, flag2vertexy21, flag2vertexy22, flag2vertexy23, flag2vertexy24, 
        wavex1, wavex2, wavex3, wavex4, wavex5, wavex6, wavex7, wavex8, wavex9, wavex10, wavex11, wavex12, wavex13, wavex14, wavex15, wavex16, wavex17, wavex18, wavex19, wavex20, wavex21, wavex22, wavex23, wavex24, 
        wavey1, wavey2,
        wavebottomx1, wavebottomy1, wavebottomwidth, wavebottomheight;
  
  Ship() {
  };
  
  Ship(
      float speed,
      float shipvertexx1, float shipvertexx2, float shipvertexx3, float shipvertexx4, float shipvertexx5, float shipvertexy1, float shipvertexy2, float shipvertexy3, float shipvertexy4,
      float shiplinex1, float shiplinex2, float shiplinex3, float shiplinex4, float shiplinex5, float shiplinex6, float shipliney1, float shipliney2, float shipliney3,
      float cannonx1, float cannonx2, float cannonx3, float cannony1, float cannonradius1, float cannonradius2, 
      float mastx1, float mastx2, float mastx3, float masty1, float masty2, float masty3,
      float flagx1, float flagx2, float flagx3, float flagy1, float flagy2, float flagwidth, float flagheight,
      float logox1, float logox2, float logox3, float logoy1, float logoy2, float logoradius,
      float logolinex1, float logolinex2, float logolinex3, float logolinex4, float logolinex5, float logolinex6, float logoliney1, float logoliney2, float logoliney3,
      float flagvertexx1, float flagvertexx2, float flagvertexx3, float flagvertexx4, float flagvertexx5, float flagvertexx6, float flagvertexx7, float flagvertexx8, float flagvertexx9, float flagvertexx10, float flagvertexx11, float flagvertexx12, 
      float flagvertexy1, float flagvertexy2, float flagvertexy3, float flagvertexy4,
      float flag2x1, float flag2x2, float flag2x3, float flag2y1, float flag2y2, float flag2width, float flag2height,
      float flag2vertexx1, float flag2vertexx2, float flag2vertexx3, float flag2vertexx4, float flag2vertexx5, float flag2vertexx6, float flag2vertexx7, float flag2vertexx8, float flag2vertexx9, float flag2vertexx10, float flag2vertexx11, float flag2vertexx12, float flag2vertexx13, float flag2vertexx14, float flag2vertexx15, float flag2vertexx16, float flag2vertexx17, float flag2vertexx18, float flag2vertexx19, float flag2vertexx20, float flag2vertexx21, float flag2vertexx22, float flag2vertexx23, float flag2vertexx24, 
      float flag2vertexy1, float flag2vertexy2, float flag2vertexy3, float flag2vertexy4, float flag2vertexy5, float flag2vertexy6, float flag2vertexy7, float flag2vertexy8, float flag2vertexy9, float flag2vertexy10, float flag2vertexy11, float flag2vertexy12, float flag2vertexy13, float flag2vertexy14, float flag2vertexy15, float flag2vertexy16, float flag2vertexy17, float flag2vertexy18, float flag2vertexy19, float flag2vertexy20, float flag2vertexy21, float flag2vertexy22, float flag2vertexy23, float flag2vertexy24, 
      float wavex1, float wavex2, float wavex3, float wavex4, float wavex5, float wavex6, float wavex7, float wavex8, float wavex9, float wavex10, float wavex11, float wavex12, float wavex13, float wavex14, float wavex15, float wavex16, float wavex17, float wavex18, float wavex19, float wavex20, float wavex21, float wavex22, float wavex23, float wavex24, 
      float wavey1, float wavey2,
      float wavebottomx1, float wavebottomy1, float wavebottomwidth, float wavebottomheight
  ) 
  {
    this.speed = speed;
    this.shipvertexx1 = shipvertexx1; this.shipvertexx2 = shipvertexx2; this.shipvertexx3 = shipvertexx3; this.shipvertexx4 = shipvertexx4; this.shipvertexx5 = shipvertexx5; this.shipvertexy1 = shipvertexy1; this.shipvertexy2 = shipvertexy2; this.shipvertexy3 = shipvertexy3; this.shipvertexy4 = shipvertexy4; 
    this.shiplinex1 = shiplinex1; this.shiplinex2 = shiplinex2; this.shiplinex3 = shiplinex3; this.shiplinex4 = shiplinex4; this.shiplinex5 = shiplinex5; this.shiplinex6 = shiplinex6; this.shipliney1 = shipliney1; this.shipliney2 = shipliney2; this.shipliney3 = shipliney3; 
    this.cannonx1 = cannonx1; this.cannonx2 = cannonx2; this.cannonx3 = cannonx3; this.cannony1 = cannony1; this.cannonradius1 = cannonradius1; this.cannonradius2 = cannonradius2; 
    this.mastx1 = mastx1; this.mastx2 = mastx2; this.mastx3 = mastx3; this.masty1 = masty1; this.masty2 = masty2; this.masty3 = masty3; 
    this.flagx1 = flagx1; this.flagx2 = flagx2; this.flagx3 = flagx3; this.flagy1 = flagy1; this.flagy2 = flagy2; this.flagwidth = flagwidth; this.flagheight = flagheight; 
    this.logox1 = logox1; this.logox2 = logox2; this.logox3 = logox3; this.logoy1 = logoy1; this.logoy2 = logoy2; this.logoradius = logoradius; 
    this.logolinex1 = logolinex1; this.logolinex2 = logolinex2; this.logolinex3 = logolinex3; this.logolinex4 = logolinex4; this.logolinex5 = logolinex5; this.logolinex6 = logolinex6; this.logoliney1 = logoliney1; this.logoliney2 = logoliney2; this.logoliney3 = logoliney3; 
    this.flagvertexx1 = flagvertexx1; this.flagvertexx2 = flagvertexx2; this.flagvertexx3 = flagvertexx3; this.flagvertexx4 = flagvertexx4; this.flagvertexx5 = flagvertexx5; this.flagvertexx6 = flagvertexx6; this.flagvertexx7 = flagvertexx7; this.flagvertexx8 = flagvertexx8; this.flagvertexx9 = flagvertexx9; this.flagvertexx10 = flagvertexx10; this.flagvertexx11 = flagvertexx11; this.flagvertexx12 = flagvertexx12; 
    this.flagvertexy1 = flagvertexy1; this.flagvertexy2 = flagvertexy2; this.flagvertexy3 = flagvertexy3; this.flagvertexy4 = flagvertexy4; 
    this.flag2x1 = flag2x1; this.flag2x2 = flag2x2; this.flag2x3 = flag2x3; this.flag2y1 = flag2y1; this.flag2y2 = flag2y2; this.flag2width = flag2width; this.flag2height = flag2height; 
    this.flag2vertexx1 = flag2vertexx1; this.flag2vertexx2 = flag2vertexx2; this.flag2vertexx3 = flag2vertexx3; this.flag2vertexx4 = flag2vertexx4; this.flag2vertexx5 = flag2vertexx5; this.flag2vertexx6 = flag2vertexx6; this.flag2vertexx7 = flag2vertexx7; this.flag2vertexx8 = flag2vertexx8; this.flag2vertexx9 = flag2vertexx9; this.flag2vertexx10 = flag2vertexx10; this.flag2vertexx11 = flag2vertexx11; this.flag2vertexx12 = flag2vertexx12; this.flag2vertexx13 = flag2vertexx13; this.flag2vertexx14 = flag2vertexx14; this.flag2vertexx15 = flag2vertexx15; this.flag2vertexx16 = flag2vertexx16; this.flag2vertexx17 = flag2vertexx17; this.flag2vertexx18 = flag2vertexx18; this.flag2vertexx19 = flag2vertexx19; this.flag2vertexx20 = flag2vertexx20; this.flag2vertexx21 = flag2vertexx21; this.flag2vertexx22 = flag2vertexx22; this.flag2vertexx23 = flag2vertexx23; this.flag2vertexx24 = flag2vertexx24; 
    this.flag2vertexy1 = flag2vertexy1; this.flag2vertexy2 = flag2vertexy2; this.flag2vertexy3 = flag2vertexy3; this.flag2vertexy4 = flag2vertexy4; this.flag2vertexy5 = flag2vertexy5; this.flag2vertexy6 = flag2vertexy6; this.flag2vertexy7 = flag2vertexy7; this.flag2vertexy8 = flag2vertexy8; this.flag2vertexy9 = flag2vertexy9; this.flag2vertexy10 = flag2vertexy10; this.flag2vertexy11 = flag2vertexy11; this.flag2vertexy12 = flag2vertexy12; this.flag2vertexy13 = flag2vertexy13; this.flag2vertexy14 = flag2vertexy14; this.flag2vertexy15 = flag2vertexy15; this.flag2vertexy16 = flag2vertexy16; this.flag2vertexy17 = flag2vertexy17; this.flag2vertexy18 = flag2vertexy18; this.flag2vertexy19 = flag2vertexy19; this.flag2vertexy20 = flag2vertexy20; this.flag2vertexy21 = flag2vertexy21; this.flag2vertexy22 = flag2vertexy22; this.flag2vertexy23 = flag2vertexy23; this.flag2vertexy24 = flag2vertexy24; 
    this.wavex1 = wavex1; this.wavex2 = wavex2; this.wavex3 = wavex3; this.wavex4 = wavex4; this.wavex5 = wavex5; this.wavex6 = wavex6; this.wavex7 = wavex7; this.wavex8 = wavex8; this.wavex9 = wavex9; this.wavex10 = wavex10; this.wavex11 = wavex11; this.wavex12 = wavex12; this.wavex13 = wavex13; this.wavex14 = wavex14; this.wavex15 = wavex15; this.wavex16 = wavex16; this.wavex17 = wavex17; this.wavex18 = wavex18; this.wavex19 = wavex19; this.wavex20 = wavex20; this.wavex21 = wavex21; this.wavex22 = wavex22; this.wavex23 = wavex23; this.wavex24 = wavex24; 
    this.wavey1 = wavey1; this.wavey2 = wavey2; 
    this.wavebottomx1 = wavebottomx1; this.wavebottomy1 = wavebottomy1; this.wavebottomwidth = wavebottomwidth; this.wavebottomheight = wavebottomheight;
  };
  
  void display() {
    
     //ship
    fill(#E6BF83);
    beginShape();
    curveVertex(shipvertexx1, shipvertexy1); 
    curveVertex(shipvertexx1, shipvertexy2);
    curveVertex(shipvertexx2, shipvertexy3);
    curveVertex(shipvertexx3, shipvertexy4);
    curveVertex(shipvertexx4, shipvertexy3);
    curveVertex(shipvertexx5, shipvertexy2);
    curveVertex(shipvertexx5, shipvertexy1);
    endShape(CLOSE);
    line(shiplinex1,shipliney1,shiplinex4,shipliney1);
    line(shiplinex2,shipliney2,shiplinex5,shipliney2);
    line(shiplinex3,shipliney3,shiplinex6,shipliney3);
    //cannon
    fill(#DCB579);
    ellipse(cannonx1,cannony1,cannonradius1,cannonradius1);
    ellipse(cannonx2,cannony1,cannonradius1,cannonradius1);
    ellipse(cannonx3,cannony1,cannonradius1,cannonradius1);
    fill(0);
    ellipse(cannonx1,cannony1,cannonradius2,cannonradius2);
    ellipse(cannonx2,cannony1,cannonradius2,cannonradius2);
    ellipse(cannonx3,cannony1,cannonradius2,cannonradius2);
    fill(255);
    //mast
    line(mastx1,masty1,mastx1,masty2);
    line(mastx2,masty1,mastx2,masty3);
    line(mastx3,masty1,mastx3,masty2);
    
    
    //flag
    noStroke();
    fill(0); //black
    rect(flagx1,flagy1,flagwidth,flagheight);
    rect(flagx2,flagy2,flagwidth,flagheight);
    rect(flagx3,flagy1,flagwidth,flagheight);
    fill(color(255,51,51)); //red
    ellipse(logox1,logoy1,logoradius,logoradius);
    ellipse(logox2,logoy2,logoradius,logoradius);
    ellipse(logox3,logoy1,logoradius,logoradius);
    strokeWeight(8);
    stroke(color(255,51,51)); //red
    line(logolinex1,logoliney1,logolinex4,logoliney2);
    line(logolinex1,logoliney2,logolinex4,logoliney1);
    line(logolinex2,logoliney3,logolinex5,logoliney1);
    line(logolinex2,logoliney1,logolinex5,logoliney3);
    line(logolinex3,logoliney1,logolinex6,logoliney2);
    line(logolinex3,logoliney2,logolinex6,logoliney1);
    strokeWeight(1);
    fill(0); //black
    noStroke();
    beginShape();
    curveVertex(flagvertexx1, flagvertexy1); 
    curveVertex(flagvertexx2, flagvertexy1);
    curveVertex(flagvertexx2, flagvertexy2);
    curveVertex(flagvertexx1, flagvertexy2);
    endShape(CLOSE);
    fill(#00ffff); //background color
    beginShape();
    curveVertex(flagvertexx3, flagvertexy1); 
    curveVertex(flagvertexx4, flagvertexy1);
    curveVertex(flagvertexx4, flagvertexy2);
    curveVertex(flagvertexx3, flagvertexy2);
    endShape(CLOSE);
    fill(0);
    beginShape();
    curveVertex(flagvertexx5, flagvertexy3); 
    curveVertex(flagvertexx6, flagvertexy3);
    curveVertex(flagvertexx6, flagvertexy4);
    curveVertex(flagvertexx5, flagvertexy4);
    endShape(CLOSE);
    fill(#00ffff); //background color
    beginShape();
    curveVertex(flagvertexx7, flagvertexy3); 
    curveVertex(flagvertexx8, flagvertexy3);
    curveVertex(flagvertexx8, flagvertexy4);
    curveVertex(flagvertexx7, flagvertexy4);
    endShape(CLOSE);
    fill(0);
    beginShape();
    curveVertex(flagvertexx9, flagvertexy1); 
    curveVertex(flagvertexx10, flagvertexy1);
    curveVertex(flagvertexx10, flagvertexy2);
    curveVertex(flagvertexx9, flagvertexy2);
    endShape(CLOSE);
    fill(#00ffff); //background color
    beginShape();
    curveVertex(flagvertexx11, flagvertexy1); 
    curveVertex(flagvertexx12, flagvertexy1);
    curveVertex(flagvertexx12, flagvertexy2);
    curveVertex(flagvertexx11, flagvertexy2);
    endShape(CLOSE);
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
    fill(#00ffff); //background color
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
    fill(#00ffff); //background color
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
    shipvertexx1 += speed; shipvertexx2 += speed; shipvertexx3 += speed; shipvertexx4 += speed; shipvertexx5 += speed;
    shiplinex1 += speed; shiplinex2 += speed; shiplinex3 += speed; shiplinex4 += speed; shiplinex5 += speed; shiplinex6 += speed;
    cannonx1 += speed; cannonx2 += speed; cannonx3 += speed;
    mastx1 += speed; mastx2 += speed; mastx3 += speed;
    flagx1 += speed; flagx2 += speed; flagx3 += speed;
    logox1 += speed; logox2 += speed; logox3 += speed;
    logolinex1 += speed; logolinex2 += speed; logolinex3 += speed; logolinex4 += speed; logolinex5 += speed; logolinex6 += speed;
    flagvertexx1 += speed; flagvertexx2 += speed; flagvertexx3 += speed; flagvertexx4 += speed; flagvertexx5 += speed; flagvertexx6 += speed; flagvertexx7 += speed; flagvertexx8 += speed; flagvertexx9 += speed; flagvertexx10 += speed; flagvertexx11 += speed; flagvertexx12 += speed;
    flag2x1 += speed; flag2x2 += speed; flag2x3 += speed;
    flag2vertexx1 += speed; flag2vertexx2 += speed; flag2vertexx3 += speed; flag2vertexx4 += speed; flag2vertexx5 += speed; flag2vertexx6 += speed; flag2vertexx7 += speed; flag2vertexx8 += speed; flag2vertexx9 += speed; flag2vertexx10 += speed; flag2vertexx11 += speed; flag2vertexx12 += speed; flag2vertexx13 += speed; flag2vertexx14 += speed; flag2vertexx15 += speed; flag2vertexx16 += speed; flag2vertexx17 += speed; flag2vertexx18 += speed; flag2vertexx19 += speed; flag2vertexx20 += speed; flag2vertexx21 += speed; flag2vertexx22 += speed; flag2vertexx23 += speed; flag2vertexx24 += speed; 
    wavex1 += speed; wavex2 += speed; wavex3 += speed; wavex4 += speed; wavex5 += speed; wavex6 += speed; wavex7 += speed; wavex8 += speed; wavex9 += speed; wavex10 += speed; wavex11 += speed; wavex12 += speed; wavex13 += speed; wavex14 += speed; wavex15 += speed; wavex16 += speed; wavex17 += speed; wavex18 += speed; wavex19 += speed; wavex20 += speed; wavex21 += speed; wavex22 += speed; wavex23 += speed; wavex24 += speed; 
    wavebottomx1 += speed; 
  }
 
 float getCannonX1(){
   return cannonx1;
 }
  float getCannonX2(){
   return cannonx2;
 }
  float getCannonX3(){
   return cannonx3;
 }
}
