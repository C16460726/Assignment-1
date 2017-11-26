float rx, ry, rd;

class Radar
{  
  Radar (int col)
  {
      noFill();
      strokeWeight(2);
      stroke(0, col, 0);
      rd = 125;
      rx = ry = rd/2;
  }
  
  void display()
  {
    ellipse(rx, ry, rd, rd);
  }
  
  void RadarUse()
  {
    PVector mouse = new PVector(mouseX, mouseY);
    PVector radcenter = new PVector(rx, ry);
    mouse.sub(radcenter);
    
    mouse.normalize();
    
    mouse.mult(rd/2);
    
    pushMatrix();
      translate(rx, ry);
      line(0, 0, mouse.x, mouse.y);
     popMatrix();
  }
}