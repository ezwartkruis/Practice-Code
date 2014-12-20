class Particle {
  PVector loc, vel, acc;                                      //declare location, velocity, and acceleration PVectors
  Float sz;                                                   //declare size
  //PImage present;
  
  Particle(float tempsz) {
    //present = loadImage("present.png");
    sz = tempsz;                                              //initialize size
    loc = new PVector(380, 200);                        //initialize location
    vel = new PVector(random(-2,0), random(1,3));             //initialize velocity
    acc = new PVector(random(-.05,0), .05);           //initialize acceleration
  }

  void display() {
    //image(present, loc.x, loc.y, sz, sz);
    ellipse(loc.x, loc.y, sz, sz);                            //draw ellipse
  }

  void move() {
    vel.add(acc);                                             //add acceleration to velocity
    loc.add(vel);                                             //add velocity to location
  }

}

