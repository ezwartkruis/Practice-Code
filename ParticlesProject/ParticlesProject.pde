ArrayList <Particle> presents = new ArrayList <Particle>();      //declare new ArrayList from the Particle Class
ArrayList <Snowflake> snowflakes = new ArrayList <Snowflake>();  //declare new ArrayList from the Snowflake Class
PImage reindeer;                                                 //declare picture
PImage santa;                                                    //declare picture

void setup() {
  size(800, 600);
  reindeer = loadImage("flyingReindeers.png");                  //load picture into program
  santa = loadImage("santaSleigh.png");                         //load picture into program
}

void draw() {
  background(10, 20, 170);                                           //set background color
  image (reindeer, 620, 150, reindeer.width/4, reindeer.height/4);   //display image
  image (reindeer, 500, 170, reindeer.width/4, reindeer.height/4);   //display image
  image (santa, 350, 170, santa.width/4, santa.height );             //display image

  if (mousePressed) {                                           //if the mouse is pressed...
    presents.add(new Particle(random(20, 50)));                 //...then add particles from the Particle Class
  }
  for (int i = presents.size () - 1; i >= 0; i--) {             //go through the arraylist
    Particle p = presents.get(i);                               //get particles out of the arraylist from the Particle Class
    p.display();                                                //display a particle reverencing the class
    p.move();                                                   //move a particle reverencing the class
    if (p.fell()) {
      presents.remove(i);
    }
  }

  snowflakes.add(new Snowflake(random(5, 15)));                 //add snowflakes from the Snowflake Class
  for (int i = snowflakes.size () - 1; i >= 0; i--) {           //go through array list 
    Snowflake s = snowflakes.get(i);                            //get snowflakes out if the arraylist from the Snowflake Class
    s.display();                                                //display a snowflake
    s.move();                                                   //move snowflake
    if (s.melted()) {                                              //if snowlflake melted is true...
      snowflakes.remove(i);                                       //...then remove snowflake
    }
  }
}

