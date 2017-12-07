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
      vertex(x - gs, y - sqrt(3) * gs);
      vertex(x + gs, y - sqrt(3) * gs);
      vertex(x + 2 * gs, y);
      vertex(x + gs, y + sqrt(3) * gs);
      vertex(x - gs, y + sqrt(3) * gs);
      vertex(x - 2 * gs, y);
    endShape(CLOSE);  //Include a CLOSE to complete the hexagon
    
    
  }//End displayB()
}//End class Border