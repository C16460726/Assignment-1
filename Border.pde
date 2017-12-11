float angleB = 0;
float xf, yf;
int i;

class Border
{
  Border()
  {
    
  }//End Border()
  
  void displayB(float x, float y, float s)
  {
    noFill();
    xf = yf = 0;
    beginShape();
      stroke(25);
      strokeWeight(8);
      for (i = 0; i < 8; i++)
      {
        angleB = i * 2 * PI / 8;
        vertex(x + s * cos(angleB), y + s * sin(angleB));
      }//End for
    endShape(CLOSE);  //Include a CLOSE to complete the octagon
    
    line(100, 100, x - s * cos(angleB), y + s * sin(angleB));
    line(0, y, x - s, y);
    line(100, height - 100, x - s * cos(angleB), y - s * sin(angleB));
    
    line(x, height, x, y + s);
    line(x, 0, x, y - s);
    
    line(width - 100, height - 100, x + s * cos(angleB),  y - s * sin(angleB));
    line(width, y, x + s, y);
    line(width - 100, 100, x + s * cos(angleB),  y + s * sin(angleB));

    //Ring
    noFill();
    strokeWeight(100);
    stroke(15);
    ellipse(width/2, height/2, 900, 850);
    strokeWeight(150);
    stroke(138, 138, 138);
    ellipse(width/2, height/2, 1125, 1125);
  }//End displayB()
}//End class Border