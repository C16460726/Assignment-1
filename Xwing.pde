float xwidth, xheight;
float lightx, lighty;
float xwx, xwy;
float explosionsize1, explosionsize2;
class Xwing
{
  Xwing()
  {
    xwidth = 30;
    xheight = 15;
    explosionsize1 = explosionsize2 = 5;
  }//End constructor
  
  void displayxw(float x1, float y1)
  {
    xwx = x1;
    xwy = y1;
    PVector xwing = new PVector(xwx, xwy);
    noStroke();
    fill(165);
    rect(xwing.x, xwing.y, xwidth, xheight, 4);
    fill(228, 180, 68);
    rect(xwing.x + 8, xwing.y + 3, 14, 9);
    
    //Display the wings
    stroke(200);
    strokeWeight(5);
    float w = 0;
    float h;
    float c = - 30;
    for(i = 1; i <= 4; i++)
    {
      if (i > 2)
      {
        w = xwidth;
        c = xwidth + 30;
      }//End if
      
      if (i % 2 == 0)
      {
        h = xheight + 5;
      }//End if
      
      else
      {
        h = - 5;
      }//End else
      
      line(xwing.x + w, xwing.y + xheight/2, xwing.x + c, xwing.y + h);
    }//End for
    
    //Add lights
    strokeWeight(3);
    fill(255, 90, 90);
   
    for (i = 0; i <= 2; i++)
    {
      if (i == 1)
      {
        noFill();
      }//End if
      
      stroke(255, 90, 90, 250 - (i * 100));
      ellipse(xwing.x, xwing.y + 2, 5 + (i * 5), 5 + (i * 5));
    }//End for
    
    fill(255, 90, 90);
    for (i = 0; i <= 2; i++)
    {
      if (i == 1)
      {
        noFill();
      }//End if
      
      stroke(255, 90, 90, 250 - (i * 100));
      ellipse(xwing.x + xwidth, xwing.y + 2, 5 + (i * 5), 5 + (i * 5));
    }//End for
    
    fill(255, 90, 90);
    for (i = 0; i <= 2; i++)
    {
      if (i == 1)
      {
        noFill();
      }//End if
      
      stroke(255, 90, 90, 250 - (i * 100));
      ellipse(xwing.x, xwing.y + xheight, 5 + (i * 5), 5 + (i * 5));
    }//End for
    
    fill(255, 90, 90);
    for (i = 0; i <= 2; i++)
    {
      if (i == 1)
      {
        noFill();
      }//End if
      
      stroke(255, 90, 90, 250 - (i * 100));
      ellipse(xwing.x + xwidth, xwing.y + xheight, 5 + (i * 5), 5 + (i * 5));
    }//End for
    
    xwing1x += random(-0.7, .7);
    xwing1y += random(-0.7, .7);
    xwing2x += random(-0.7, .7);
    xwing2y += random(-0.7, .7);
    
    if (shot1)
    {
      xwing1x -= 2.5;
      xwing1y += 3;
      fill(249, 116, 15);
      ellipse(xwing1x + xwidth/2, xwing1y + xheight/2, explosionsize1, explosionsize1);
      explosionsize1++;
    }//End if
    
    if (shot2)
    {
      xwing2x += 2.5;
      xwing2y += 3;
      fill(249, 116, 15);
      ellipse(xwing2x + xwidth/2, xwing2y + xheight/2, explosionsize2, explosionsize2);
      explosionsize2++;
    }//End if
    
    if (xwing1y >= height + 150)
    {
      xwing1x = 0;
      xwing1y = 15;
      shot1 = false;
      explosionsize1 = 5;
    }//End if
    
    if (xwing2y >= height + 150)
    {
      xwing2x = width;
      xwing2y = 15;
      shot2 = false;
      explosionsize2 = 5;
    }//End if
    
    if (xwing1y <= 365)
    {
      xwing1x += 4;
      xwing1y += 4;
    }//End if
    
    if (xwing2y <= 365)
    {
      xwing2x -= 4;
      xwing2y += 4;
    }//End if
  }//End displayxw()
}//End class Xwing