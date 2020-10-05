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
        flagvertexy1, flagvertexy2, flagvertexy3, flagvertexy4;

  
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
      float flagvertexy1, float flagvertexy2, float flagvertexy3, float flagvertexy4

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

  }
  
}
