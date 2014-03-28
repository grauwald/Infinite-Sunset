
void sun() {

  h = random(16);
  s = 196;
  b = 255;
  a = random(8,16);

  noStroke();

  // sun
  fill(h, s, b, a);
  ellipse(width*.5+random(-5, 5), horizon+random(-5, 5)-(height*.035), random(height*.07, height*.11), random(height*.07, height*.11));

  // sun reflection
  fill(h, s, b, a*.25);
  ellipse(width*.5+random(-22, 22), (horizon*2)+random(-5, 5)+(height*.035), random(height*.044, height*.077), random(height*.77, height*.88));
}
