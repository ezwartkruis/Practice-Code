ArrayList <Particle> particles = new ArrayList <Particle>();  //declare new ArrayList from the Particle Class
BlackHole consumesEverything;                                 //declare new blackhole
BlackHole spitsOutEverything;                                 //declare other blackhole

void setup() {
  size(800, 600);                                             //set size of display
  consumesEverything = new BlackHole(40);                     //initialize blackhole
  spitsOutEverything = new BlackHole(20);                     //initialize other blackhole
}

void draw() {
  background(255);                                            //set background color
  consumesEverything.display();                               //display blackhole
  spitsOutEverything.display();                               //display other blackhole
  if(mousePressed){                                           //if the mouse is pressed...
  particles.add(new Particle(random(10,30)));                 //...then add particles from the Particle Class
  }
  for (int i = particles.size () - 1; i >= 0; i--) {          //go through the arraylist
    Particle p = particles.get(i);                            //get particles out of the arraylist from the Particle Class
    p.display();                                              //display a particle reverencing the class
    p.move();                                                 //move a particle reverencing the class
    p.suckedIn(consumesEverything);
    if(consumesEverything.consume(p)){
  print("eaten");
  }}
}

