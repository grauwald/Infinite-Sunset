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
