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
    PVector velocity = new PVector(2, 2);
   // PVector acceleration = new PVector(0, 0);

    mouse.sub(radcenter);
    mouse.normalize();
    mouse.mult(rd/2);
    
    pushMatrix();
    
     translate(rx, ry);
     float c = 1;
     while (c > 0)
     {
       line(0, 0, mouse.x - c, mouse.y - c);
       delay(1000);
       c = c - 0.1;
       println(c);
     }
     popMatrix();
  }
}