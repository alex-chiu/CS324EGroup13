import processing.sound.*;
SoundFile file;

Ship s;
Cannonball c;
Flag f;
Waves w;

int xoffset = 325; //for 700x600 window size
int yoffset = 200;
int flagoffset = 1;

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
  80 - xoffset,180 - xoffset,280 - xoffset,150 + yoffset,50 + 2 + yoffset,20 + 2 + yoffset,
  //flag1
  30 - xoffset,130 - xoffset,230 - xoffset,70 + yoffset,40 + yoffset,80,60,
  //logo
  85 - xoffset,185 - xoffset,285 - xoffset,100 + yoffset,70 + yoffset,30,
  //logo lines
  65 - xoffset,165 - xoffset,265 - xoffset,105 - xoffset,205 - xoffset,305 - xoffset,85 + yoffset,115 + yoffset, 55 + yoffset,
  //flag vertices
  0 - xoffset,110 - xoffset,-120 - xoffset,30 - xoffset,100 - xoffset,210 - xoffset,-20 - xoffset,130 - xoffset,200 - xoffset,310 - xoffset,80 - xoffset,230 - xoffset,
  70 + yoffset,130 + yoffset,40 + yoffset,100 + yoffset

  );
  
  c = new Cannonball(
  //speed
  1,
  //cannonball
  115 - xoffset,175 - xoffset,235 - xoffset,200 + yoffset,15);
  
  f = new Flag(
  //speed & color
  1,
  //flag2
  60 - xoffset,160 - xoffset,260 - xoffset,52 + yoffset,22 + yoffset,20,10,
  //flag 2 vertices
  70 - xoffset,79 - xoffset,61 - xoffset,70 - xoffset,70 - xoffset,80 - xoffset,60 - xoffset,70 - xoffset,170 - xoffset,179 - xoffset,161 - xoffset,170 - xoffset,170 - xoffset,180 - xoffset,160 - xoffset,170 - xoffset,270 - xoffset,279 - xoffset,261 - xoffset,270 - xoffset,270 - xoffset,280 - xoffset,260 - xoffset,270 - xoffset,
  100 + yoffset,54 + yoffset,0 + yoffset,56 + yoffset,110 + yoffset,64 + yoffset,-10 + yoffset,47 + yoffset,70 + yoffset,24 + yoffset,-30 + yoffset,26 + yoffset,80 + yoffset,34 + yoffset,-40 + yoffset,17 + yoffset,100 + yoffset,54 + yoffset,0 + yoffset,56 + yoffset,110 + yoffset,64 + yoffset,-10 + yoffset,47 + yoffset
  
  );
  
  w = new Waves(
  //speed
  1.275,
  //waves
  300 - xoffset,50 - xoffset,325 - xoffset,75 - xoffset,350 - xoffset,100 - xoffset,375 - xoffset,125 - xoffset,400 - xoffset,150 - xoffset,425 - xoffset,175 - xoffset,450 - xoffset,200 - xoffset,475 - xoffset,225 - xoffset,500 - xoffset,250 - xoffset,525 - xoffset,275 - xoffset,550 - xoffset,300 - xoffset,575 - xoffset,326 - xoffset,
  230 + yoffset,260 + yoffset,
  //wave bottom
  18 - xoffset,242 + yoffset,307,20
  );
  
}

void draw () {
  background(#00ffff);
  s.display();
  s.move();
  f.display();
  f.move();
  w.display();
  w.move();
  c.display();
  c.move();
  
  //plays cannonball sound at halfway point
  if (s.shipvertexx5 > 350 && s.shipvertexx5 < 352){
    file.play();
  }
  
  //cannonballs fire and grow bigger after halfway point
  if (s.shipvertexx5 > 350 && s.shipvertexx5 < 700){
    c.speed = 2;
    c.cannony += c.speed;
    c.cannonradius += c.speed/20;
  }
  
  //make waves go back and forth
  if (s.shipvertexx5 % 25 == 0){
    w.speed = -5.5;
  }
  else {
    w.speed = 1.275;
  }
  
  //make flags flap up and down
  if (s.shipvertexx5 % 100 == 0){
    f.flag2vertexy2 -= flagoffset; f.flag2vertexy4 -= flagoffset; f.flag2vertexy6 -= flagoffset; f.flag2vertexy8 -= flagoffset; f.flag2vertexy10 -= flagoffset; f.flag2vertexy12 -= flagoffset; f.flag2vertexy14 -= flagoffset; f.flag2vertexy16 -= flagoffset; f.flag2vertexy18 -= flagoffset; f.flag2vertexy20 -= flagoffset; f.flag2vertexy22 -= flagoffset; f.flag2vertexy24 -= flagoffset; 
  }
  else if (s.shipvertexx5 % 50 == 0){
    f.flag2vertexy2 += flagoffset; f.flag2vertexy4 += flagoffset; f.flag2vertexy6 += flagoffset; f.flag2vertexy8 += flagoffset; f.flag2vertexy10 += flagoffset; f.flag2vertexy12 += flagoffset; f.flag2vertexy14 += flagoffset; f.flag2vertexy16 += flagoffset; f.flag2vertexy18 += flagoffset; f.flag2vertexy20 += flagoffset; f.flag2vertexy22 += flagoffset; f.flag2vertexy24 += flagoffset; 
  }
  
  //resets all x positions when ship goes offscreen
  if (w.wavebottomx1 > 700) {
    s.shipvertexx1 = 25 - xoffset; s.shipvertexx2 = 65 - xoffset; s.shipvertexx3 = 175 - xoffset; s.shipvertexx4 = 285 - xoffset; s.shipvertexx5 = 325 - xoffset;
    s.shiplinex1 = 30 - xoffset; s.shiplinex2 = 40 - xoffset; s.shiplinex3 = 75 - xoffset; s.shiplinex4 = 320 - xoffset; s.shiplinex5 = 310 - xoffset; s.shiplinex6 = 275 - xoffset;
    s.cannonx1 = 115 - xoffset; s.cannonx2 = 175 - xoffset; s.cannonx3 = 235 - xoffset;
    s.mastx1 = 80 - xoffset; s.mastx2 = 180 - xoffset; s.mastx3 = 280 - xoffset;
    s.flagx1 = 30 - xoffset; s.flagx2 = 130 - xoffset; s.flagx3 = 230 - xoffset;
    s.logox1 = 85 - xoffset; s.logox2 = 185 - xoffset; s.logox3 = 285 - xoffset;
    s.logolinex1 = 65 - xoffset; s.logolinex2 = 165 - xoffset; s.logolinex3 = 265 - xoffset; s.logolinex4 = 105 - xoffset; s.logolinex5 = 205 - xoffset; s.logolinex6 = 305 - xoffset;
    s.flagvertexx1 = 0 - xoffset; s.flagvertexx2 = 110 - xoffset; s.flagvertexx3 = -120 - xoffset; s.flagvertexx4 = 30 - xoffset; s.flagvertexx5 = 100 - xoffset; s.flagvertexx6 = 210 - xoffset; s.flagvertexx7 = -20 - xoffset; s.flagvertexx8 = 130 - xoffset; s.flagvertexx9 = 200 - xoffset; s.flagvertexx10 = 310 - xoffset; s.flagvertexx11 = 80 - xoffset; s.flagvertexx12 = 230 - xoffset;
    
    f.flag2x1 = 60 - xoffset; f.flag2x2 = 160 - xoffset; f.flag2x3 = 260 - xoffset;
    f.flag2vertexx1 = 70 - xoffset; f.flag2vertexx2 = 79 - xoffset; f.flag2vertexx3 = 61 - xoffset; f.flag2vertexx4 = 70 - xoffset; f.flag2vertexx5 = 70 - xoffset; f.flag2vertexx6 = 80 - xoffset; f.flag2vertexx7 = 60 - xoffset; f.flag2vertexx8 = 70 - xoffset; f.flag2vertexx9 = 170 - xoffset; f.flag2vertexx10 = 179 - xoffset; f.flag2vertexx11 = 161 - xoffset; f.flag2vertexx12 = 170 - xoffset; f.flag2vertexx13 = 170 - xoffset; f.flag2vertexx14 = 180 - xoffset; f.flag2vertexx15 = 160 - xoffset; f.flag2vertexx16 = 170 - xoffset; f.flag2vertexx17 = 270 - xoffset; f.flag2vertexx18 = 279 - xoffset; f.flag2vertexx19 = 261 - xoffset; f.flag2vertexx20 = 270 - xoffset; f.flag2vertexx21 = 270 - xoffset; f.flag2vertexx22 = 280 - xoffset; f.flag2vertexx23 = 260 - xoffset; f.flag2vertexx24 = 270 - xoffset; 
    f.flag2vertexy1 = 100 + yoffset;  f.flag2vertexy2 = 54 + yoffset; f.flag2vertexy3 = 0 + yoffset; f.flag2vertexy4 = 56 + yoffset; f.flag2vertexy5 = 110 + yoffset; f.flag2vertexy6 = 64 + yoffset; f.flag2vertexy7 = -10 + yoffset; f.flag2vertexy8 = 47 + yoffset; f.flag2vertexy9 = 70 + yoffset; f.flag2vertexy10 = 24 + yoffset; f.flag2vertexy11 = -30 + yoffset; f.flag2vertexy12 = 26 + yoffset; f.flag2vertexy13 = 80 + yoffset; f.flag2vertexy14 = 34 + yoffset; f.flag2vertexy15 = -40 + yoffset; f.flag2vertexy16 = 17 + yoffset; f.flag2vertexy17 = 100 + yoffset; f.flag2vertexy18 = 54 + yoffset; f.flag2vertexy19 = 0 + yoffset; f.flag2vertexy20 = 56 + yoffset; f.flag2vertexy21 = 110 + yoffset; f.flag2vertexy22 = 64 + yoffset; f.flag2vertexy23 = -10 + yoffset; f.flag2vertexy24 = 47 + yoffset;
    
    w.wavex1 = 300 - xoffset; w.wavex2 = 50 - xoffset; w.wavex3 = 325 - xoffset; w.wavex4 = 75 - xoffset; w.wavex5 = 350 - xoffset; w.wavex6 = 100 - xoffset; w.wavex7 = 375 - xoffset; w.wavex8 = 125 - xoffset; w.wavex9 = 400 - xoffset; w.wavex10 = 150 - xoffset; w.wavex11 = 425 - xoffset; w.wavex12 = 175 - xoffset; w.wavex13 = 450 - xoffset; w.wavex14 = 200 - xoffset; w.wavex15 = 475 - xoffset; w.wavex16 = 225 - xoffset; w.wavex17 = 500 - xoffset; w.wavex18 = 250 - xoffset; w.wavex19 = 525 - xoffset; w.wavex20 = 275 - xoffset; w.wavex21 = 550 - xoffset; w.wavex22 = 300 - xoffset; w.wavex23 = 575 - xoffset; w.wavex24 = 326 - xoffset; 
    w.wavebottomx1 = 18 - xoffset; 
    
    c.cannonx1 = 115 - xoffset;
    c.cannonx2 = 175 - xoffset;
    c.cannonx3 = 235 - xoffset;
    c.cannony = 200 + yoffset;
    c.speed = 1;
    c.cannonradius = 15;
  }
  
}
