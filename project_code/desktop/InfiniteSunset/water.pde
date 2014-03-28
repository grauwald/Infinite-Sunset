void water() {

  for (int i=0; i<77; i++) {

    y = random(horizon, height);
    
    colour = palette[round( (y/height)*(totalColors-1) )];
    h = hue(colour);
    s = saturation(colour);
    b = brightness(colour);
    a =  map(y, 0, height, 44, 11);

    stroke(h, s, b, a);
    strokeWeight(random(8));
    line(0, y+random(-fuzz, fuzz), width, y+random(-fuzz, fuzz));
  }
  
  // horizon line
  stroke(h, s, 255, 11);
  line(0, horizon+random(-fuzz*.2, fuzz*.2), width, horizon+random(-fuzz*.2, fuzz*.2));
  
}
