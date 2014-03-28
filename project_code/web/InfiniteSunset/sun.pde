
void sun(){
  // sun
  fill(4, 196, 255, 16);
  noStroke();
  ellipse(width*.5+random(-5, 5), height*.1+random(-5, 5), random(height*.07, height*.11), random(height*.07, height*.11));
 
  // sun reflection
  fill(4, 196, 255, 8);
  noStroke();
  ellipse(width*.5+random(-22, 22), height*.55+random(-5, 5), random(height*.044, height*.077), random(height*.77, height*.88));
}
