float x, y, sz, velX, velY, gravity;    //declate integers

void setup(){
  size(800,600);
  y = 15;                   //initialize vertical starting position of ball 
  x = width/2;              //initialize horizontal starting position of ball 
  sz = 30;                  //initialize size of ball
  velX = 2;                 //initialize horizontal velociy
  velY = 0;                 //initialize vertical velociy
  gravity = 1;              //initialize gravity
}

void draw(){
  background(0);
  ellipse(x,y,sz,sz);        //draw ball
  velY += gravity;           //velocity in the y direction increases with gravity(y acceleration)
  y += velY;                 //veertical position increases with velocity in the y direction
  if (y + sz/2 > height){    //when ball hits bottom of screen...
   y = height - sz/2;        //vertical position equals bottom of screen
   velY = -abs(velY)*.9;     //...then make velocity negative and decrease
  }
  x += velX;
  if(x +sz/2 > width){
   velX = -abs(velX); 
  }
  if(x -sz/2 < 0 ){
   velX = abs(velX); 
  }
}
