class BlackHole {
  PVector loc;
  float sz;


BlackHole() {
  loc = new PVector (random(width), random(height));
  sz = 30;
}

void display() {
  fill(0);
  ellipse(loc.x, loc.y, sz, sz);
}

boolean consume (Ball food){
 if(loc.dist(food.loc) < sz/2 + food.sz/2){
  return true;
 } 
 else{
  return false; 
 }
}
 void grow(){
 sz +=1;
}}
