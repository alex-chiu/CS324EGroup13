import processing.sound.*;
SoundFile file;

Ship s;
Cannonball c;
//Flag f;
//Waves w;

int xoffset = 325; //for 700x600 window size
int yoffset = 200;


void setup () {
  size(700,600);
  background(#00ffff);
  
  file = new SoundFile(this, "cannonball1.mp3");
  
    s = new Ship(
  //speed
  1,
  //shipvertices
  25 - xoffset,65 - xoffset,175 - xoffset,285 - xoffset,325 - xoffset,0 + yoffset,150 + yoffset,225 + yoffset,250 + yoffset,
  //shiplines
  30 - xoffset,40 - xoffset,75 - xoffset,320 - xoffset,310 - xoffset,275 - xoffset,170 + yoffset,200 + yoffset,230 + yoffset,
  //cannon
  115 - xoffset,175 - xoffset,235 - xoffset,200 + yoffset,30,15,
  //mast
  80 - xoffset,180 - xoffset,280 - xoffset,150 + yoffset,50 + yoffset,20 + yoffset,
  //flag1
  30 - xoffset,130 - xoffset,230 - xoffset,70 + yoffset,40 + yoffset,80,60,
  //logo
  85 - xoffset,185 - xoffset,285 - xoffset,100 + yoffset,70 + yoffset,30,
  //logo lines
  65 - xoffset,165 - xoffset,265 - xoffset,105 - xoffset,205 - xoffset,305 - xoffset,85 + yoffset,115 + yoffset, 55 + yoffset,
  //flag vertices
  0 - xoffset,110 - xoffset,-120 - xoffset,30 - xoffset,100 - xoffset,210 - xoffset,-20 - xoffset,130 - xoffset,200 - xoffset,310 - xoffset,80 - xoffset,230 - xoffset,
  70 + yoffset,130 + yoffset,40 + yoffset,100 + yoffset,
  //flag2
  60 - xoffset,160 - xoffset,260 - xoffset,50 + yoffset,20 + yoffset,20,10,
  //flag 2 vertices
  70 - xoffset,79 - xoffset,61 - xoffset,70 - xoffset,70 - xoffset,80 - xoffset,60 - xoffset,70 - xoffset,170 - xoffset,179 - xoffset,161 - xoffset,170 - xoffset,170 - xoffset,180 - xoffset,160 - xoffset,170 - xoffset,270 - xoffset,279 - xoffset,261 - xoffset,270 - xoffset,270 - xoffset,280 - xoffset,260 - xoffset,270 - xoffset,
  100 + yoffset,54 + yoffset,0 + yoffset,56 + yoffset,110 + yoffset,64 + yoffset,-10 + yoffset,47 + yoffset,70 + yoffset,24 + yoffset,-30 + yoffset,26 + yoffset,80 + yoffset,34 + yoffset,-40 + yoffset,17 + yoffset,100 + yoffset,54 + yoffset,0 + yoffset,56 + yoffset,110 + yoffset,64 + yoffset,-10 + yoffset,47 + yoffset,
  //waves
  300 - xoffset,50 - xoffset,325 - xoffset,75 - xoffset,350 - xoffset,100 - xoffset,375 - xoffset,125 - xoffset,400 - xoffset,150 - xoffset,425 - xoffset,175 - xoffset,450 - xoffset,200 - xoffset,475 - xoffset,225 - xoffset,500 - xoffset,250 - xoffset,525 - xoffset,275 - xoffset,550 - xoffset,300 - xoffset,575 - xoffset,326 - xoffset,
  230 + yoffset,260 + yoffset,
  //wave bottom
  18 - xoffset,242 + yoffset,307,20
  );
  
  c = new Cannonball(1,115 - xoffset,175 - xoffset,235 - xoffset,200 + yoffset,15);

}

void draw () {
  background(#00ffff);
  s.display();
  s.move();
  c.display();
  c.move();
  
  if (s.shipvertexx5 > 350 && s.shipvertexx5 < 352){
    file.play();
  }
  
  if (s.shipvertexx5 > 350 && s.shipvertexx5 < 700){
    c.speed = 2;
    c.cannony += c.speed;
  }
  
  if (s.wavebottomx1 > 700) {
    s.shipvertexx1 = 25 - xoffset; s.shipvertexx2 = 65 - xoffset; s.shipvertexx3 = 175 - xoffset; s.shipvertexx4 = 285 - xoffset; s.shipvertexx5 = 325 - xoffset;
    s.shiplinex1 = 30 - xoffset; s.shiplinex2 = 40 - xoffset; s.shiplinex3 = 75 - xoffset; s.shiplinex4 = 320 - xoffset; s.shiplinex5 = 310 - xoffset; s.shiplinex6 = 275 - xoffset;
    s.cannonx1 = 115 - xoffset; s.cannonx2 = 175 - xoffset; s.cannonx3 = 235 - xoffset;
    s.mastx1 = 80 - xoffset; s.mastx2 = 180 - xoffset; s.mastx3 = 280 - xoffset;
    s.flagx1 = 30 - xoffset; s.flagx2 = 130 - xoffset; s.flagx3 = 230 - xoffset;
    s.logox1 = 85 - xoffset; s.logox2 = 185 - xoffset; s.logox3 = 285 - xoffset;
    s.logolinex1 = 65 - xoffset; s.logolinex2 = 165 - xoffset; s.logolinex3 = 265 - xoffset; s.logolinex4 = 105 - xoffset; s.logolinex5 = 205 - xoffset; s.logolinex6 = 305 - xoffset;
    s.flagvertexx1 = 0 - xoffset; s.flagvertexx2 = 110 - xoffset; s.flagvertexx3 = -120 - xoffset; s.flagvertexx4 = 30 - xoffset; s.flagvertexx5 = 100 - xoffset; s.flagvertexx6 = 210 - xoffset; s.flagvertexx7 = -20 - xoffset; s.flagvertexx8 = 130 - xoffset; s.flagvertexx9 = 200 - xoffset; s.flagvertexx10 = 310 - xoffset; s.flagvertexx11 = 80 - xoffset; s.flagvertexx12 = 230 - xoffset;
    s.flag2x1 = 60 - xoffset; s.flag2x2 = 160 - xoffset; s.flag2x3 = 260 - xoffset;
    s.flag2vertexx1 = 70 - xoffset; s.flag2vertexx2 = 79 - xoffset; s.flag2vertexx3 = 61 - xoffset; s.flag2vertexx4 = 70 - xoffset; s.flag2vertexx5 = 70 - xoffset; s.flag2vertexx6 = 80 - xoffset; s.flag2vertexx7 = 60 - xoffset; s.flag2vertexx8 = 70 - xoffset; s.flag2vertexx9 = 170 - xoffset; s.flag2vertexx10 = 179 - xoffset; s.flag2vertexx11 = 161 - xoffset; s.flag2vertexx12 = 170 - xoffset; s.flag2vertexx13 = 170 - xoffset; s.flag2vertexx14 = 180 - xoffset; s.flag2vertexx15 = 160 - xoffset; s.flag2vertexx16 = 170 - xoffset; s.flag2vertexx17 = 270 - xoffset; s.flag2vertexx18 = 279 - xoffset; s.flag2vertexx19 = 261 - xoffset; s.flag2vertexx20 = 270 - xoffset; s.flag2vertexx21 = 270 - xoffset; s.flag2vertexx22 = 280 - xoffset; s.flag2vertexx23 = 260 - xoffset; s.flag2vertexx24 = 270 - xoffset; 
    s.wavex1 = 300 - xoffset; s.wavex2 = 50 - xoffset; s.wavex3 = 325 - xoffset; s.wavex4 = 75 - xoffset; s.wavex5 = 350 - xoffset; s.wavex6 = 100 - xoffset; s.wavex7 = 375 - xoffset; s.wavex8 = 125 - xoffset; s.wavex9 = 400 - xoffset; s.wavex10 = 150 - xoffset; s.wavex11 = 425 - xoffset; s.wavex12 = 175 - xoffset; s.wavex13 = 450 - xoffset; s.wavex14 = 200 - xoffset; s.wavex15 = 475 - xoffset; s.wavex16 = 225 - xoffset; s.wavex17 = 500 - xoffset; s.wavex18 = 250 - xoffset; s.wavex19 = 525 - xoffset; s.wavex20 = 275 - xoffset; s.wavex21 = 550 - xoffset; s.wavex22 = 300 - xoffset; s.wavex23 = 575 - xoffset; s.wavex24 = 326 - xoffset; 
    s.wavebottomx1 = 18 - xoffset; 
    
    c.cannonx1 = 115 - xoffset;
    c.cannonx2 = 175 - xoffset;
    c.cannonx3 = 235 - xoffset;
    c.cannony = 200 + yoffset;
    c.speed = 1;
  }
  
}
