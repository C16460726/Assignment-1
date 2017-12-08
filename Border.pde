float angleB = 0;
class Border
{
  Border()
  {
    
  }//End Border()
  
  void displayB(float x, float y, float s)
  {
    beginShape();
      stroke(25);
      strokeWeight(8);
      for(int i = 0; i < 8; i++)
      {
        angleB = i * 2 * PI / 8;
        vertex(x + s * cos(angleB), y + s * sin(angleB));
        //line(, , x + s * cos(angleB), y + s * sin(angleB));
      }//End for
    endShape(CLOSE);  //Include a CLOSE to complete the hexagon
    
    line(0, 0, x - s * cos(angleB), y + s * sin(angleB));
    line(0, height/2, x - s, y);
    line(0, height, x - s * cos(angleB), y - s * sin(angleB));
    
    line(x, height, x, y + s);
    
    line(width, height, x + s * cos(angleB),  y - s * sin(angleB));
    line(width, height/2, x + s, y);
    
  }//End displayB()
}//End class Border