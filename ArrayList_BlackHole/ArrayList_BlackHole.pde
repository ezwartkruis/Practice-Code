ArrayList<Ball> food = new ArrayList <Ball>();
BlackHole consumesEverything;

void setup() {
  size(800, 600);
  colorMode(HSB,360,100,100,100);
  consumesEverything = new BlackHole();
}

void draw() {
  background(230,100,50,100);
  consumesEverything.display();
  if (mousePressed){
   food.add(new Ball (random(5,30), random(.5,3))); 
  }
  for(int i =0; i < food.size(); i++){
    Ball b = food.get(i);
    b.display();
    b.move();
    //b.bounce();
    b.suckedIn(consumesEverything);
    if(consumesEverything.consume(b)){
     food.remove(i);
     consumesEverything.grow();
    }
  }
}

