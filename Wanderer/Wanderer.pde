float locx, locy, velx, vely, accx, accy;
float sz = 40;

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size (800, 600); 
  locx = width/2;
  locy = height/2;
  velx = 0;
  vely = 0;
  accx = random(-.05, .05);
  accy = random(-.05, .05);
}

void draw() {
  fill(frameCount%360, 100, 100);
  stroke(frameCount%360, 100, 30);
  accx = random(-.05, .05);
  accy = random(-.05, .05);
  velx += accx;
  vely += accy;
  velx = constrain(velx, -3, 3);
  vely = constrain(vely, -3, 3);
  locx += velx;
  locy += vely;
  ellipse(locx, locy, sz, sz);
  if (locx - sz/2 > width) {
    locx = -sz/2;
  }
  if (locx + sz/2 < 0) {
    locx = width + sz/2;
  }
  if (locy - sz/2 > height) {
    locy = -sz/2;
  }
  if (locy + sz/2 < 0) {
    locy = width + sz/2;
  }
}

