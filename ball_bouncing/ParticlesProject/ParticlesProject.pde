ArrayList <Particle> presents = new ArrayList <Particle>();  //declare new ArrayList from the Particle Class
PImage reindeer;

void setup() {
  size(800, 600);
  reindeer = loadImage("flyingReindeers.png");
}

void draw() {
  background(10, 20, 170);                                            //set background color
  image (reindeer, 600, 150, 100,100);
  image (reindeer, 500, 170, 100,100);
  if (mousePressed) {                                         //if the mouse is pressed...
    presents.add(new Particle(random(10, 30)));               //...then add particles from the Particle Class
  }
  for (int i = presents.size () - 1; i >= 0; i--) {           //go through the arraylist
    Particle p = presents.get(i);                             //get particles out of the arraylist from the Particle Class
    p.display();                                              //display a particle reverencing the class
    p.move();                                                 //move a particle reverencing the class
  }
}

