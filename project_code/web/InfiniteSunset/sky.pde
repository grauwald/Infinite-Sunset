void sky() {
  noStroke();
  fill(y/height*255, 128, 64, 2);
  rect(0, 0, width, height*.17);
  
  // horizon
  stroke(4, 196, 255, random(1, 11));
  line(0, height*.17+random(-33, 33), width, height*.15+random(-33, 33) );
 
}
