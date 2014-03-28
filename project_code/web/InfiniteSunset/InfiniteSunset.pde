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
  size($(window).width(), $(window).height()); // for js version
//  size(displayWidth, displayHeight);
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
 
int totalColors = 16;
color[][] palettes;
color[] palette;

int colorIndex;
color colour;

PImage[] sunsetImages;
int totalImages;

void getPalettes() {
  String[] imageURLs = loadStrings("http://infinite-sunset.com/top-ten-sunsets/");
  totalImages = imageURLs.length;
  PImage[] sunsetImages = new PImage[totalImages];
  
  palettes = new color[totalImages][totalColors];
  
  palettes[0] = [ #D8AD69,  #C08D4F,  #E7B26A,  #FCDBA5,  #FCDAA3,  #FCD293,  #F0AB56,  #DD9341,  #E1903D,  #CD8C4B,  #C9874D,  #AB7444,  #825A38,  #81603E,  #5E4A31,  #725B3B, ];
  palettes[1] = [ #A03C01,  #B04301,  #C24A01,  #D45301,  #E75F02,  #F67812,  #DB7E20,  #CF9237,  #DCC474,  #5C5211,  #906F1D,  #DC982C,  #D38E21,  #B77915,  #9B6912,  #956612, ];
  palettes[2] = [ #9A68BA,  #AB68B3,  #BD66A9,  #C3639E,  #C15C92,  #CA5989,  #CE5781,  #D45171,  #C8475F,  #902C3C,  #2F0608,  #1F0304,  #140203,  #0F0203,  #0D0102,  #0D0102, ];
  palettes[3] = [ #701B1A,  #86211E,  #932926,  #AB362F,  #BD3D34,  #AE3532,  #B03731,  #D04734,  #933320,  #5E1910,  #A12A11,  #A62C13,  #892215,  #6A1914,  #6B170E,  #4C110B, ];
  palettes[4] = [ #36355B,  #3F3A5F,  #4D3E5E,  #5D445F,  #71475B,  #8D4547,  #AD4935,  #C0573E,  #CD5D37,  #F18139,  #D98F5C,  #CA936A,  #624123,  #060201,  #000000,  #000000, ];
  palettes[5] = [ #567FA2,  #698FAD,  #7399AF,  #7499AE,  #507C9B,  #3C6A8B,  #567583,  #A9A18A,  #D2C38D,  #958252,  #3B3D2F,  #806F45,  #957E48,  #5C5132,  #1A180F,  #080702, ];
  palettes[6] = [ #4048CA,  #5756D0,  #7267D2,  #977AD2,  #BB7FB5,  #A76887,  #A64F45,  #C74622,  #6F1817,  #74251E,  #612016,  #391B17,  #22191B,  #101117,  #05080B,  #020404, ];
  palettes[7] = [ #664044,  #774C50,  #663E41,  #623A3D,  #633A3D,  #4E282D,  #471B21,  #431720,  #541421,  #580E1D,  #891950,  #971D79,  #71176B,  #771572,  #7C1786,  #801B8D, ];
  palettes[8] = [ #8094AC,  #9DAABD,  #AFB8C4,  #A1ADB9,  #83939F,  #566974,  #2C3C44,  #707676,  #5B5E5E,  #8D745B,  #DF9A5B,  #DD8848,  #BD895B,  #645D58,  #62696C,  #687072, ];
  palettes[9] = [ #354D5C,  #435C6B,  #566C7A,  #71838B,  #989E9B,  #CDBFA6,  #F6DFA9,  #FDF9B2,  #F8EE98,  #896344,  #17130E,  #050603,  #030502,  #030501,  #030501,  #030501, ];

  
  /*
  for(int i=0; i<totalImages; i++){
    sunsetImages[i] = loadImage(imageURLs[i], "png");
    try { 
      sunsetImages[i].resize(1, totalColors); 
      for(int j=0; j<totalColors; j++){
        sunsetImages[i].loadPixels();
        palettes[i][j] = sunsetImages[i].pixels[j];
      }
    }  
    catch (Exception e) { 
    	console.log('no image');
    	return; 
    }
  }
  */
  
}


void choosePalette(){
  int index = round(random(0, totalImages-1));
  palette = palettes[index];
}

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

