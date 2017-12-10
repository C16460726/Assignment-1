float xwidth, xheight;
class Xwing
{
  Xwing()
  {
    xwidth = 85;
    xheight = 20;
  }//End constructor
  
  void displayxw(float x1, float y1, float x2, float y2)
  {
    PVector xwing1 = new PVector(x1, y1);
    PVector xwing2 = new PVector(x2, y2);
    noStroke();
    fill(165);
    rect(xwing1.x, xwing1.y, xwidth, xheight, 4);
    rect(xwing2.x, xwing2.y, xwidth, xheight);
    stroke(200);
    strokeWeight(5);
    //Display the wings
    line(xwing1.x, xwing1.y + xheight/2, xwing1.x - 30, xwing1.y - 5);
    line(xwing1.x, xwing1.y + xheight/2, xwing1.x - 30, xwing1.y + xheight + 5);
    line(xwing1.x + xwidth, xwing1.y + xheight/2, xwing1.x + xwidth + 30, xwing1.y - 5);
    line(xwing1.x + xwidth, xwing1.y + xheight/2, xwing1.x + xwidth + 30, xwing1.y + xheight + 5);
  }//End displayxw()
}//End class Xwing