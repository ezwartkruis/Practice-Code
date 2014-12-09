Ball [] b = new Ball [100];
Blackhole h;

void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  h = new Blackhole();
  for (int i = 0; i < b.length; i++) {
    b[i] = new Ball(random(10, 30), random(.5, 5));
  }
}

void draw() {
  background(230,100,50,100);
  for (int i = 0; i < b.length; i++) {
    h.consume(b[i]);
    b[i].display();
    b[i].move();
    b[i].bounce();
    for ( int j = 0; j < b.length; j++) {
      if (i!=j) {
        b[i].collideWith(b[j]);
      }
    }
  }
  h.display();
}


