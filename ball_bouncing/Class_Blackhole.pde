class Blackhole {
  PVector loc;
  float sz;


Blackhole() {
  loc = new PVector (100, 100);
  sz = 100;
}

void display() {
  fill(0);
  ellipse(loc.x, loc.y, sz, sz);
}

void consume (Ball food){
 if(loc.dist(food.loc) < sz/2 + food.sz/2){
 food.disappear();
 } 
}
}
