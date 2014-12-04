int count = 100;
PVector [] loc = new PVector [count];
PVector [] vel = new PVector [count];
PVector [] acc = new PVector [count];
float [] sz = new float [count];
PImage snowflake;

void setup(){
  
  size(800, 600);
  snowflake = loadImage("snowflake.png");
  for (int i = 0; i < count; i++) {
    sz[i] = random(5, 15);
    loc[i] = new PVector(random(width), random(-height, -sz[i]/2));
    vel[i] = new PVector(0, random(2));
    acc[i] = new PVector(0, .02);
  }
  noStroke();
  fill(255, 200);
}

void draw() {
  background(0, 20, 100);
  for (int i = 0; i < count; i++) {

    vel[i].add(acc[i]);
    loc[i].add(vel[i]);
    vel[i].limit(3);

    image(snowflake, loc[i].x, loc[i].y, sz[i], sz[i]);

    acc[i].x = random(-.1, .1);

    if (loc[i].y - sz[i]/2 > height) {
      loc[i].set(random(width), random(-height, -sz[i]/2));
      vel[i].set(0, 1);
    }
  }
}
