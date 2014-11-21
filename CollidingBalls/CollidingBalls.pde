  PVector loc, vel, acc;
  PVector mouse;
  int = sz;

void setup(){
  size(800, 600);
  loc = new PVector(width/2, height/2);
  vel = PVector.random2D;
  acc = new PVector(0, 0);
  mouse = new PVector();
  sz = 50;
}

void draw(){
  mouse.set(mouseX, mouseY);
  background();
  //move ball
  vel.add(acc);
  loc.add(vel);
  //mouse inside circle?
  if(loc.dist(mouse) < sz/2){
    if
  }
  
  //draw ball
  ellipse(loc.x, loc.y, sz, sz);
  //bounce ball
  if(loc.x + sz/2 > width || loc.x - sz/2 < 0){
   loc.x *= -1; 
  }
  if(loc.y + sz/2 > height || loc.y - sz/2 < ){
   loc.y *= -1; 
  }
}
