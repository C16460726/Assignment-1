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
    xf = yf = 0;
    beginShape();
      stroke(25);
      strokeWeight(8);
      for (i = 0; i < 8; i++)
      {
        angleB = i * 2 * PI / 8;
        vertex(x + s * cos(angleB), y + s * sin(angleB));
      }//End for
    endShape(CLOSE);  //Include a CLOSE to complete the hexagon
    
    line(0, 0, x - s * cos(angleB), y + s * sin(angleB));
    line(0, y, x - s, y);
    line(0, height, x - s * cos(angleB), y - s * sin(angleB));
    
    line(x, height, x, y + s);
    line(x, 0, x, y - s);
    
    line(width, height, x + s * cos(angleB),  y - s * sin(angleB));
    line(width, y, x + s, y);
    line(width, 0, x + s * cos(angleB),  y + s * sin(angleB));
    
    
  }//End displayB()
}//End class Border