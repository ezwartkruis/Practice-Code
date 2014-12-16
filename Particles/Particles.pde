ArrayList <Particle> particles = new ArrayList <Particle>();

void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  particles.add(new Particle());
  for (int i = particles.size() - 1; i >= 0; i--) {
    Particle p = particles.get(i);
    p.display();
    p.move();
  }
}

class Particle {
  PVector loc, vel, acc;
  Float sz;

  Particle() {
    sz = random(10, 50);
    loc = new PVector(mouseX, mouseY);
    vel = new PVector(random(-3, 3), random(-3, 3));
    acc = new PVector(random(-.1, .1), random(-.1, .1));
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    vel.add(acc);
    loc. add(vel);
  }
}

