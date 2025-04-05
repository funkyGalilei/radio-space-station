
// ELLIPSE PARAMETERS
float y = -41;           // starting y offset of ellipse
int i = 0;                    //used for time
int amplitude = 10;           // amplitude of ellipse
float phaseMultiple = 0.03;   // what the time iterator is multiplied by
//float phaseMultiple = 0.01;   // what the time iterator is multiplied by

int j = 1;
float someColor = 0;

float someMotion = 0;         // the end result of sin motion
float sizeEllipse = 150;

PGraphics pg;

// IMAGE animation loading
int numFrames = 209;
PImage[] images = new PImage[numFrames];
PImage firstFrame;
int k = 1;

void setup() {
  size(540, 540);
  frameRate(24);
  pg = createGraphics(width, height);
  
  images = loadImages("asteroid", numFrames, images);
  firstFrame = loadImage("asteroid/asteroid0001.png");
}

void draw() {
  background(0);
  //image(firstFrame, 0, 0);
  if (k-1 < numFrames){
    image(images[k-1], 0, 0);
    k++;
  } else {
    k = 1;
  }
  
  colorMode(HSB, 255);
  
  i++;
  j++;
  someColor = 50 + sin(j * phaseMultiple/2) * 40;
  someMotion = y - sin(i * phaseMultiple) * amplitude;
  //someMotion = y;
  
  pg.beginDraw();
  pg.clear();      // necessary to reset the graphics object
  bloomEllipse(pg, someMotion, sizeEllipse, 25);
  pg.endDraw();
  
  image(pg, 0, 0);
  // pg.save("output/bloom" + nf(i, 4) + ".png");
}
