class Ball {
  PVector loc, vel, acc;
  float sz;
  float hue;
  float speed;

  Ball(float tempsz, float tempspeed) {
    //initialize variables
    sz = tempsz;
    loc = new PVector(mouseX, mouseY);
    vel = PVector.random2D();
    speed = tempspeed;
    vel.mult(speed);
    acc = new PVector(0, 0);
    hue = random(360);
  }
  
  void display() {
    fill(hue, 50, 100, 100);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  
  void bounce() {
    if (loc.x + sz/2 > width){
      vel.x = -abs(vel.x);
    }    
    if(loc.x - sz/2 < 0) {
      vel.x = abs(vel.x);
    }
    if (loc.y + sz/2 > height){
    vel.y = -abs(vel.y);
    }
    if(loc.y - sz/2 < 0) {
      vel.y = abs(vel.y);
    }
  }
  
  void collideWith(Ball otherBall) {
    if (loc.dist(otherBall.loc) < sz/2 + otherBall.sz/2) {
      vel = PVector.sub(loc, otherBall.loc);
      vel.normalize();
      vel.setMag(speed);
    }
  }
  
  void disappear(){
   loc.set(width*2, height*2);
  vel.set(0,0); 
  }
  
  void suckedIn(BlackHole gone){
   acc = PVector.sub(gone.loc, loc);
  acc.setMag(.05); 
  }
}

