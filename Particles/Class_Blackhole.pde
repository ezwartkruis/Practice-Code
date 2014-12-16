class BlackHole {                                        
  PVector loc;                                            //declare location
  float sz;                                               //declare size


  BlackHole(float tempsz) {
    loc = new PVector (random(width), random(height));    //initialize location
    sz = tempsz;                                          //initialize size
  }

  void display() {
    fill(0);                                              //set fill
    ellipse(loc.x, loc.y, sz, sz);                        //create ellipse
  }



  boolean consume (Particle food) {
    if (loc.dist(food.loc) < sz/2 + food.sz/2) {
      return true;
    } else {
      return false;
    }
  }

}

