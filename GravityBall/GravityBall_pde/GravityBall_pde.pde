float x, y, sz, velX, velY, gravity;

void setup(){
  size(800,600);
  y = 15;
  x = width/2;
  sz = 30;
  velX = 0;
  velY = 0;
  gravity = 1;
}

void draw(){
  background(0);
  ellipse(x,y,sz,sz);
  velY += gravity;
  y += velY;
  if (y + sz/2 > height){
   y = height -sz/2;
   velY = -abs(velY); 
  }
}
