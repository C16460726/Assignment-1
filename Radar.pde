float rx, ry, rd;
float angle = -PI;

class Radar
{  
  //Constructor for the Radar class
  Radar()
  {
      noFill();
      rd = 125;   //diameter of the radar
      //Initialise the center of the radar
      rx = rd * 2.8;
      ry = height - rd;
  }//End constructor
  
  void display(int col)
  {
    noFill();
    //PVector class for the center of the radar
    PVector radcenter = new PVector(rx, ry);
    
    strokeWeight(1);
    stroke(0, col, 0);
    //Create the cross hairs
    line(rx, height - (rd * 1.5), rx, height - (rd/2));
    line(rd * 3.3, ry, rd * 2.3,  ry);
    
    //Create four circles for the radar in increasing size, the outer circle has a bigger strokeWeight.
    for (rd = 0; rd <= 125; rd = rd + 31.25)
    {
        //If it's the final circle, increase it's strokeWeight value to make it thicker than the other lines
        if (rd == 125)
        {
          strokeWeight(3);
        }//End if
  
        ellipse(radcenter.x, radcenter.y, rd, rd);
     }//End for
     
     //Set rd back to 125
     rd = 125;
     
     //Draw the line that rotates around the fixed point (radcenter)
     line(radcenter.x, radcenter.y, rx + rd/2 * cos((PI/2)+angle), ry + rd/2 * sin((PI/2)+angle));
     
     //Make it continue around the fixed point by resetting the angle value
      if (angle >= PI) 
      {
        angle = -PI;
      }//End if
      
      else
      {
        angle = angle + 0.02;
      }//End else
  }//End display()
}//End Radar class