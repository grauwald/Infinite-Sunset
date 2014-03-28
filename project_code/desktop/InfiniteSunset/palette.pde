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
  
  for(int i=0; i<totalImages; i++){
    sunsetImages[i] = loadImage(imageURLs[i], "png");
    try { 
      sunsetImages[i].resize(1, totalColors); 
      print("palettes[i] = [");
      
      for(int j=0; j<totalColors; j++){
        sunsetImages[i].loadPixels();
        palettes[i][j] = sunsetImages[i].pixels[j];
        
        print(" #"+hex(sunsetImages[i].pixels[j])+", ");
      }
      
      println("];");
    }  
    catch (Exception e) { return; }
  }
}


void choosePalette(){
  int index = round(random(0, totalImages-1));
  palette = palettes[index];
  //println(palette);
}
