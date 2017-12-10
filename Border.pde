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
  
  void displayS()
  {
    strokeWeight(10);
    stroke(200,200,200);
    noFill();
    float x =  350 + (390/2 * sin(radians(60)));
    float y = height/2 + (390/2 * cos(radians(60)));
    line(200,200,x,y);
    
    float x1 = 350 + (390/2 * sin(radians(60+60)));
    float y1 = height/2 + (390/2 * cos(radians(60+60)));
    line(200,200,x1,y1);
    
    float x2 = 350 + (390/2 * sin(radians(60+60+60)));
    float y2 = height/2 + (390/2 * cos(radians(60+60+60)));
    line(200,200,x2,y2);
    
    float x3 = 350 + (390/2 * sin(radians(60+60+60+60)));
    float y3 = height/2 + (390/2 * cos(radians(60+60+60+60)));
    line(200,200,x3,y3);
    
    float x4 = 350 + (390/2 * sin(radians(60+60+60+60+60)));
    float y4 = height/2 + (390/2 * cos(radians(60+60+60+60+60)));
    line(200,200,x4,y4);
    
    float x5 = 350 + (390/2 * sin(radians(60+60+60+60+60+60)));
    float y5 = height/2 + (390/2 * cos(radians(60+60+60+60+60+60)));
    line(200,200,x5,y5);
    
    noStroke();
    fill(200,200,200);
    
    arc(280,250,300,350,radians(75),radians(105));
    
    arc(280,250,300,350,radians(75+60),radians(105+60));
    arc(280,250,300,350,radians(75+120),radians(105+120));
    arc(280,250,300,350,radians(75+180),radians(105+180));
    arc(280,250,300,350,radians(75+180+60),radians(105+180+60));
    arc(280,250,300,350,radians(75+180+60+60),radians(105+180+60+60));
    
    noStroke();
    fill(200,200,200);
    ellipse(200,200,300,300);
    
    strokeWeight(10);
    stroke(200,200,200);
    noFill();
    ellipse(200,200,390,390);
    
    noStroke();
    fill(0,0,0);
    
    arc(200,200,250,250,radians(75),radians(105));
    
    arc(200,200,250,250,radians(75+60),radians(105+60));
    arc(200,200,250,250,radians(75+120),radians(105+120));
    arc(200,200,250,250,radians(75+180),radians(105+180));
    arc(200,200,250,250,radians(75+180+60),radians(105+180+60));
    arc(200,200,250,250,radians(75+180+60+60),radians(105+180+60+60));
    
    noStroke();
    fill(0,0,0);
    ellipse(200,200,120,120);
}//End displayS()
}//End class Border