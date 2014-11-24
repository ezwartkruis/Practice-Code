PVector loc, vel, acc;
PVector loc2, vel2, acc2;

int sz, sz2;

void setup() {
  size(800, 600);
  loc = new PVector(width/2, height/2);
  vel = PVector.random2D();
  acc = new PVector(0, 0);
  loc2 = new PVector(width/4, height/4);
  vel2 = PVector.random2D();
  acc2 = new PVector(0, 0);
  sz = 50;
  sz2 = 100;
}

void draw() {
  background(0);
  
  //move ball
  vel.add(acc);
  loc.add(vel);
  vel2.add(acc2);
  loc2.add(vel2);
  
  //circles touching?
  if (loc.dist(loc2) < sz/2 + sz2/2) {
    if (loc.x < loc2.x) {
      vel.x = -abs(vel.x);
      vel2.x = abs(vel2.x);
    } else {
      vel.x = abs(vel.x);
      vel2.x = -abs(vel2.x);
    }
    if (loc.y < loc2.y) {
      vel.y = -abs(vel.y);
      vel2.y = abs(vel2.y);
    } else {
      vel.y = abs(vel.y);
      vel2.y = -abs(vel2.y);
    }
  } 

  //draw ball
  ellipse(loc.x, loc.y, sz, sz);
  ellipse(loc2.x, loc2.y, sz2, sz2);

  //bounce ball
  if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
    vel.x *= -1;
  }
  if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
    vel.y *= -1;
  }
  if (loc2.x + sz2/2 > width || loc2.x - sz2/2 < 0) {
    vel2.x *= -1;
  }
  if (loc2.y + sz2/2 > height || loc2.y - sz2/2 < 0) {
    vel 2.y *= -1;
  }
}

void mouseReleased() {
  loc2.set(mouseX, mouseY);
}
