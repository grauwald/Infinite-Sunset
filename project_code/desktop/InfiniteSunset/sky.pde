void sky() {
  for (int i=0; i<44; i++) {
    y = random(horizon);
    colour = palette[round( (y/height)*(totalColors-1) )];
    h = hue(colour);
    s = saturation(colour);
    b = brightness(colour);
    
    stroke(h, s, b, random(1, 11));
    line(0, y+random(-fuzz, fuzz), width, y+random(-fuzz, fuzz));
  }
}
