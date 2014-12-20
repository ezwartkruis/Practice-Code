ArrayList <Particle> presents = new ArrayList <Particle>();  //declare new ArrayList from the Particle Class
PImage reindeer;
PImage santa;

void setup() {
  size(800, 600);
  reindeer = loadImage("flyingReindeers.png");
  santa = loadImage("santaSleigh.png");
}

void draw() {
  background(10, 20, 170);                                            //set background color
  image (reindeer, 620, 150, reindeer.width/4, reindeer.height/4);
  image (reindeer, 500, 170, reindeer.width/4, reindeer.height/4);
  image(santa,350,170, santa.width/4, santa.height );
  if (mousePressed) {                                         //if the mouse is pressed...
    presents.add(new Particle(random(10, 30)));               //...then add particles from the Particle Class
  }
  for (int i = presents.size () - 1; i >= 0; i--) {           //go through the arraylist
    Particle p = presents.get(i);                             //get particles out of the arraylist from the Particle Class
    p.display();                                              //display a particle reverencing the class
    p.move();                                                 //move a particle reverencing the class
  }
}

