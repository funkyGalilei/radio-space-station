
float y = 0;
int i = 0;
float someMotion = 0;
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
  someMotion = sin(i * 0.01) * 40;
  
  pg.beginDraw();
  pg.clear();
  pg.fill(150, 255, 150);
  pg.noStroke();
  
  pg.ellipse(width/2, someMotion, sizeEllipse, sizeEllipse);
  pg.endDraw();
  
  image(pg, 0, height/2);
  pg.save("output/something" + nf(i, 4) + ".png");
}
