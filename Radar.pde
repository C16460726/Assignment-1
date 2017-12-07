float rx, ry, rd;
float angle = -PI;

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
    PVector radcenter = new PVector(rx, ry);
    noStroke();
    strokeWeight(1);
    stroke(0, col, 0);
    line(rd/2, 0, rd/2, rd);
    line(0, rd/2, rd, rd/2);
    //line(rx, ry, 360 + cos(angle) * 200, 250 + sin(angle) * 200);
    
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
     
     //Draw the line that rotates around the fixed point (radcenter)
     line(radcenter.x, radcenter.y, rd/2 + rd/2 * cos((PI/2)+angle), rd/2 + rd/2 * sin((PI/2)+angle));
     
     //Make it continue around the fixed point by resetting the angle value
      if (angle >= PI) 
      {
        angle = -PI;
      }//End if
      
      else
      {
        angle = angle + 0.02;
      }//End else
  }
}