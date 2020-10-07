int xoffset = 340;

Cloud c;
Rain r;

Cloud c2;
Rain r2;

 
 void setup() {
   size(500,500);
   c = new Cloud(3, 200, 250, 150, 300, 100, 400, 50, 200 + xoffset, 250+ xoffset, 300+ xoffset, 100+ xoffset, 400+ xoffset);
   r = new Rain(3, 3, 200 + xoffset, 220 + xoffset, 240 + xoffset, 260 + xoffset, 280 + xoffset, 190, 180, 170, 160, 150, 5, 0);
   c2 = new Cloud(3, 200, 250, 150, 300, 100, 400, 50, 200 + xoffset+200 , 250+ xoffset+200, 300+ xoffset+200, 100+ xoffset+200, 400+ xoffset+200);
   r2 = new Rain(3, 3, 200 + xoffset+200, 220 + xoffset+200, 240 + xoffset+200, 260 + xoffset+200, 280 + xoffset+200, 190, 180, 170, 160, 150, 5, 0);
 }
  
  void draw () {
  background(0);
  r.display();
  r.move();
  r2.display();
  r2.move();
  c.display();
  c.move();
  c2.display();
  c2.move();
  
  if (c.c4x + 30 < 0){
    c.c1x = 200 + xoffset;
    c.c2x = 250+ xoffset;
    c.c4x = 300+ xoffset;
    c.c5x = 100+ xoffset;
    c.c6x = 400+ xoffset;
    
    r.x1 = 200 + xoffset;
    r.x2 = 220 + xoffset;
    r.x3 = 240 + xoffset;
    r.x4 = 260 + xoffset;
    r.x5 = 280 + xoffset;
    
    r.y1 = 190;
    r.y2 = 180;
    r.y3 = 170;
    r.y4 = 160;
    r.y5 = 150;
    
    r.c =0;
    
    
  }
    if (c2.c4x + 30 < 0){
    c2.c1x = 200 + xoffset+200;
    c2.c2x = 250+ xoffset+200;
    c2.c4x = 300+ xoffset+200;
    c2.c5x = 100+ xoffset+200;
    c2.c6x = 400+ xoffset+200;
    
    r2.x1 = 200 + xoffset+200;
    r2.x2 = 220 + xoffset+200;
    r2.x3 = 240 + xoffset+200;
    r2.x4 = 260 + xoffset+200;
    r2.x5 = 280 + xoffset+200;
    
    r2.y1 = 190;
    r2.y2 = 180;
    r2.y3 = 170;
    r2.y4 = 160;
    r2.y5 = 150;
    
    r2.c =0;
    
    
  }
  
  if (c.c1x<400){
    
    r.y1 += r.rainspeed;
    r.y2 += r.rainspeed;
    r.y3 += r.rainspeed;
    r.y4 += r.rainspeed;
    r.y5 += r.rainspeed;
  
  }
  
  
  if (r.y1 >200){
    r.c = #00ffff;
    
  }
  
    if (c2.c1x<400){
    
    r2.y1 += r.rainspeed;
    r2.y2 += r.rainspeed;
    r2.y3 += r.rainspeed;
    r2.y4 += r.rainspeed;
    r2.y5 += r.rainspeed;
  
  }
  
  
  if (r2.y1 >200){
    r2.c = #00ffff;
    
  }
  }
  
  
 
