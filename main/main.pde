
float y = height/2;           // starting y position of ellipse

int i = 0;                    //used for time
int amplitude = 40;           // amplitude of ellipse
float phaseMultiple = 0.01;   // what the time iterator is multiplied by
float someMotion = 0;         // the end result of sin motion
int sizeEllipse = 60;

PGraphics pg;

void setup() {
  size(400,400);
  frameRate(24);
  pg = createGraphics(width, height);
}

void draw() {
  background(0);
  colorMode(HSB, 255);
  
  i++;
  someMotion = sin(i * phaseMultiple) * amplitude;
  
  pg.beginDraw();
  pg.clear();      // necessary to reset the graphics object
  pg.fill(150, 255, 150);
  pg.noStroke();
  
  pg.ellipse(width/2, y + someMotion, sizeEllipse, sizeEllipse);
  pg.endDraw();
  
  image(pg, 0, 0);
  pg.save("output/something" + nf(i, 4) + ".png");
}
