float rx, ry, rd;

class Radar
{  
  Radar ()
  {
      noFill();
      rd = 125;
      rx = ry = rd/2;
  }
  
  void display(int col)
  {
    fill(0,20);
    noStroke();
    rect(0, 0, rd, rd);
    strokeWeight(1);
    stroke(0, col, 0);
    line(rd/2, 0, rd/2, rd);
    line(0, rd/2, rd, rd/2);
    
    //Create four circles for the radar in increasing size, the outer circle has a bigger strokeWeight.
    for (rd = 0; rd <= 125; rd = rd + 31.25)
    {
      if (rd == 125)
      {
        strokeWeight(3);
      }
      
      ellipse(rx, ry, rd, rd);
     }
     
     //Set rd back to 125
     rd = 125;
  }
  
  void RadarUse()
  {
    PVector mouse = new PVector(mouseX, mouseY);
    PVector radcenter = new PVector(rx, ry);

    mouse.sub(radcenter);
    mouse.normalize();    //Set the line to a value of 1 
    mouse.mult(rd/2);     //Scale it out so that the line reaches the full radius of the radar
    
    pushMatrix();
     translate(rx, ry);
     line(0, 0, mouse.x, mouse.y);
    popMatrix();
  }
}