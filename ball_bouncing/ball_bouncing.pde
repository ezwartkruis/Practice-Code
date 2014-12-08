Ball [] b = new Ball [100];

void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i = 0; i < b.length; i++) {
    b[i] = new Ball(random(10, 30), random(.5, 5));
  }
}

void draw() {
  background(0);
  for (int i = 0; i < b.length; i++) {
    b[i].display();
    b[i].move();
    b[i].bounce();
    for ( int j = 0; j < b.length; j++) {
      if (i!=j) {
        b[i].collideWith(b[j]);
      }
    }
  }
}

class Ball {
  PVector loc, vel, acc;
  float sz;
  float hue;
  float speed;

  Ball(float tempsz, float tempspeed) {
    //initialize variables
    sz = tempsz;
    loc = new PVector(width/2, height/2);
    vel = PVector.random2D();
    speed = tempspeed;
    vel.mult(speed);
    acc = new PVector(0, 0);
    hue = random(360);
  }
  
  void display() {
    fill(hue, 100, 100, 100);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  
  void bounce() {
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
      vel.x *= -1;
    }
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      vel.y *= -1;
    }
  }
  
  void collideWith(Ball otherBall) {
    if (loc.dist(otherBall.loc) < sz/2 + otherBall.sz/2) {
      vel = PVector.sub(loc, otherBall.loc);
      vel.normalize();
      vel.setMag(speed);
    }
  }
}

