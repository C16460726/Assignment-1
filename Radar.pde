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
      line(rx, ry, mouseX, mouseY);
  }
}