float x, y;
float y1, y2;
float h, s, b, a;
float sw;
 
float horizon;
float fuzz;
 
void setup() {
  resizeSketch();
  
  colorMode(HSB);
  background(0);
  ellipseMode(CENTER);
  noCursor();
  
  getPalettes();
  choosePalette();
}

void resizeSketch(){
  //size($(window).width(), $(window).height()); // for js version
  size(displayWidth, displayHeight);
  horizon = height*.33333;
  
  fuzz = height*.023;
}
 
 
void draw() {
  
  sky(); 
  sun(); 
  water();
  
  if(random(500)>499) choosePalette(); // choose a loaded palette every once and a while
 
  if(random(10000)>9999) getPalettes(); // load new palettes very rarely

}
 
