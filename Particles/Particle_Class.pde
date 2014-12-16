class Particle {
  PVector loc, vel, acc;                                      //declare location, velocity, and acceleration PVectors
  Float sz;                                                   //declare size

  Particle(float tempsz) {
    sz = tempsz;                                              //initialize size
    loc = new PVector(mouseX, mouseY);                        //initialize location
    vel = new PVector(random(-2, 2), random(-2, 2));          //initialize velocity
    acc = new PVector(random(-.05, .05), random(-.05, .05));  //initialize acceleration
  }

  void display() {
    fill(255, 0, 0);                                            //set fill
    ellipse(loc.x, loc.y, sz, sz);                            //draw ellipse
  }

  void move() {
    vel.add(acc);                                             //add acceleration to velocity
    loc.add(vel);                                             //add velocity to location
  }
  
  void suckedIn(BlackHole gone) {
    acc = PVector.sub(gone.loc, loc);                        //subtract the location of the particles from the location of the blackhole, that equals the acceleration
    acc.setMag(.05);                                         //set magnitude of acceleration
  }
}

