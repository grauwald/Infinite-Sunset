float x, y;
float y1, y2;
float h, s, b, a;
float sw;
 
void setup() {
  size($(window).width(), $(window).height());
 
  colorMode(HSB);
  background(#025BA7);
 
  ellipseMode(CENTER);
 
  noCursor();
  
  initPalette();
  getPalettes();
}

void resizeSketch(){
  size($(window).width(), $(window).height());
}
 
 
void draw() {
  
  sky(); 

  sun(); 
 
  water();
   
//  if(random(1000)>999) getPalette();

}
 
int totalColors = 16;
color[][] palettes;
PImage[] sunsetImages;


void getPalettes() {
  String[] imageURLs = loadStrings("http://infinite-sunset.com/top-ten-sunsets/");
  int totalImages = imageURLs.length;
  
  for(int i=0; i<totalImages; i++){
    sunsetImages[i] = loadImage(imageURLs[i], "png");
    try { sunsetImage.resize(4, 4); }  
    catch (Exception e) { return; }
  }
}
void sky() {
  noStroke();
  fill(y/height*255, 128, 64, 2);
  rect(0, 0, width, height*.17);
  
  // horizon
  stroke(4, 196, 255, random(1, 11));
  line(0, height*.17+random(-33, 33), width, height*.15+random(-33, 33) );
 
}

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

