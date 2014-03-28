void water() {
  noStroke();

  a = map(y, 0, height, 3, 2) + random(-1, 1);
  s = 211;
  h = map(y, 0, height, 16, 8) + random(-5, 5);
  b = 128;

  for (int i=0; i<77; i++) {

    y1 = random(height*.17, height);

    h = map(y1, 0, height, 96, 8); //random(96, 128);
    s = map(y1, 0, height, 8, 255); // random(22, 255);
    b = map(y1, 0, height, 64, 196); // random(22, 255);
    a =  map(y1, 0, height, 44, 11);

    stroke(h, s, b, a);

    x = random(width);

    strokeWeight(random(8));
    line(0, y1+random(-33, 33), width, y1+random(-33, 33));
  }
  

  y+=.4;
  if (y>height) y=0;
}
