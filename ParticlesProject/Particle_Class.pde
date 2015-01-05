class Particle {
  PVector loc, vel, acc;                                      //declare location, velocity, and acceleration PVectors
  float sz;                                                   //declare size
  PImage present;                                             //declare picture

  Particle(float tempsz) {
    sz = tempsz;                                          //initialize size
    loc = new PVector(360, 200);                          //initialize location
    vel = new PVector(random(-2, 0), random(1, 3));       //initialize velocity
    acc = new PVector(random(-.05, 0), .05);              //initialize acceleration
    present = loadImage("present2.png");                  //load picture
  }

  void display() {
    image(present, loc.x, loc.y, sz, sz);                //draw image
  }

  void move() {
    vel.add(acc);                                        //add acceleration to velocity
    loc.add(vel);                                        //add velocity to location
  }

  boolean fell() {
    if (loc.y -sz/2 > height) {                          //if y location is greater than the screen...
      return true;                                       //...and true then continue
    } else {                                             //...or...
      return false;                                      //...false then don't continue
    }
  }
}

