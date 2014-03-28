float x, y;
float y1, y2;
float h, s, b, a;
float sw;
 
void setup() {
  size(displayWidth, displayHeight);
 
  colorMode(HSB);
  background(#025BA7);
 
  ellipseMode(CENTER);
 
  noCursor();
  
  initPalette();
  getPalettes();
}
 
void draw() {
  
  sky(); 

  sun(); 
 
  water();
  

 
   
   
//  if(random(1000)>999) getPalette();

}
 
