class Snowflake {
  PVector loc, vel, acc;                              //declare location, velocity, and acceleration
  float sz;                                           //declare size
  PImage snowflake;                                   //declare picture
  
  Snowflake(float tempsz) {
    sz = tempsz;                                      //initialize size
    loc = new PVector(random(width), 0-sz);           //initialize location
    vel = new PVector(0, random(2));                  //initialize velocity
    acc = new PVector(0, random(.02));                //initialize acceleration
    snowflake = loadImage("snowflake.png");           //load picture
  }

  void display() {
    image(snowflake, loc.x, loc.y, sz, sz);           //draw image
  }  

  void move() {
    vel.add(acc);                                     //add acceleration to velocity
    loc.add(vel);                                     //add velocity to location
    vel.limit(3);                                     //limit the magnitude of velocity
    acc.x = random(-.1, .1);                          //acceleration in the x direction can vary
  }
}

