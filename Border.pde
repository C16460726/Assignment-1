float angleB = 0;
class Border
{
  Border()
  {
    
  }//End Border()
  
  void displayB(float x, float y, float gs)
  {
    beginShape();
      stroke(25);
      strokeWeight(8);
      for(int i = 0; i < 6; i++)
      {
        angleB = i * 2 * PI / 6;
        vertex(x + gs * cos(angleB), y + gs * sin(angleB));
      }//End for
    endShape(CLOSE);  //Include a CLOSE to complete the hexagon
    
    
  }//End displayB()
}//End class Border