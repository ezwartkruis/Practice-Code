GravityBall g;

void setup() {
  size(800, 600);
  g = new GravityBall();
}

void draw() {
  background(0);
  g.display();
  g.move();
  g.bounce();
}


class GravityBall {
  PVector vel, acc, loc;
  float sz;

  GravityBall() {
    sz = random(30, 60);
    loc = new PVector(random(width-sz/2), random(height/2));
    vel = new PVector(0, 0);
    acc = new PVector(0, .1);
  } 
  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  void bounce(){
    if (loc.y > height - sz/2) {
      loc.y = height - sz/2;
      vel.y = -abs(vel.y);
    }
  }
}

