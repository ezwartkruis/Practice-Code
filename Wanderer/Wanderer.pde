PVector loc, vel, acc;
float sz = 40;

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size (800, 600); 
  loc = new PVector(width/2, height/2);
  vel = new PVector (0,0);
  acc = new PVector (random(-.05, .05), random(-.05, .05));
}

void draw() {
  fill(frameCount%360, 100, 100);
  stroke(frameCount%360, 100, 30);
  acc.set(random(-.05, .05),random(-.05, .05));
  vel.add(acc);
  vel.limit(3);
  loc.add(vel);
  ellipse(loc.x, loc.y, sz, sz);
  if (loc.x - sz/2 > width) {
    loc.x = -sz/2;
  }
  if (loc.x + sz/2 < 0) {
    loc.x = width + sz/2;
  }
  if (loc.y - sz/2 > height) {
    loc.y = -sz/2;
  }
  if (loc.y + sz/2 < 0) {
    loc.y = width + sz/2;
  }
}

