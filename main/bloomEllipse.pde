
void bloomEllipse(PGraphics element, float someMotion, float sizeEllipse, int numOfEl) {
  // numOfEl is the number of ellipses to be drawn
  
  float ellipseOpacity = 0;
  float newEllipseOpacity = 10;
  float newSizeEllipse = sizeEllipse;
  
  element.noStroke();
  for (int i = 1; i <= numOfEl; i++) {
      // we want to start the ellipse largest and lowest opacity, and then decrease size and increase opacity
      element.fill(j, 255, 75, newEllipseOpacity);
      element.ellipse(width/2, 200 + someMotion, newSizeEllipse, newSizeEllipse);
      
      // these are linear relationships - though the lerp worked well because it 
      // was something like a logarithmic curve - the pro is that it will work with any
      // numOfEl and doesn't need to be tuned
      // newEllipseOpacity = ellipseOpacity + (255/numOfEl) * i;
      // number can be lower than maximum because opacities are stacked on top of each other
      newEllipseOpacity = ellipseOpacity + (40/numOfEl) * i; 
      newSizeEllipse = sizeEllipse - (sizeEllipse/numOfEl) * i; // big, subtracting until we get to zero
  }
}
