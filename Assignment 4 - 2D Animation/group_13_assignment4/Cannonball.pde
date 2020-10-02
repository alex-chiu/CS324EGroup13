class Cannonball extends Ship {
  float speed,
        cannonx1, cannonx2, cannonx3, cannony, cannonradius
  ;
  
  Cannonball(){
  }
  
  Cannonball(float speed, 
             float cannonx1, float cannonx2, float cannonx3, float cannony, float cannonradius){
               
             this.speed = speed;
             this.cannonx1 = cannonx1; this.cannonx2 = cannonx2; this.cannonx3 = cannonx3; this.cannony = cannony; this.cannonradius = cannonradius; 
  }
  
  void display() {
  fill(0);
  ellipse(cannonx1,cannony,cannonradius,cannonradius);
  ellipse(cannonx2,cannony,cannonradius,cannonradius);
  ellipse(cannonx3,cannony,cannonradius,cannonradius);
  fill(255);
  }
  
  void move() {
    cannonx1 += speed;
    cannonx2 += speed;
    cannonx3 += speed;
  }
  
  void setCannonX1(float cannonx1){
    this.cannonx1 = cannonx1;
  }
  void setCannonX2(float cannonx2){
    this.cannonx2 = cannonx2;
  }
  void setCannonX3(float cannonx3){
    this.cannonx3 = cannonx3;
  }
  
}
