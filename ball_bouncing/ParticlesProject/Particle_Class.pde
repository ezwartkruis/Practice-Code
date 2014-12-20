class Particle {
  PVector loc, vel, acc;                                      //declare location, velocity, and acceleration PVectors
  Float sz;                                                   //declare size
  
  Particle(float tempsz) {
    sz = tempsz;                                              //initialize size
    loc = new PVector(mouseX, mouseY);                        //initialize location
    vel = new PVector(random(-2,0), random(1,3));             //initialize velocity
    acc = new PVector(random(-.05,0), random(.05));           //initialize acceleration
  }

  void display() {
    fill(0);                                                  //set fill
    ellipse(loc.x, loc.y, sz, sz);                            //draw ellipse
  }

  void move() {
    vel.add(acc);                                             //add acceleration to velocity
    loc.add(vel);                                             //add velocity to location
  }

}

