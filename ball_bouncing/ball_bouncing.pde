Ball [] b = new Ball [50];

void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i = 0; i < b.length; i++) {
    b[i] = new Ball();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < b.length; i++) {
    b[i].display();
    b[i].move();
    b[i].bounce();
    for ( int j = 0; j < b.length; i++) {
      if (i!=j) {
        b[i].collideWith(b[j]);
      }
    }
  }
}

class Ball {
  //declare variables
  PVector loc, vel, acc;
  float sz;
  float hue;
  float speed;
  
  Ball() {
    //initialize variables
    loc = new PVector(width/2, height/2);
    vel = PVector.random2D();
    vel.mult(5);
    acc = new PVector(0, 0);
    sz = random(10, 100);
    hue = random(360);
    //might run code that should only run when object is first created
  }
  void display() {
    fill(hue, 100, 100, 100);
    ellipse(loc.x, loc.y, sz, sz);
  }
  void bounce() {
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
      vel.x *= -1;
    }
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      vel.y *= -1;
    }
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
  }
}

