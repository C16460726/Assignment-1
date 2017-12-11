float[] t = new float[1000];
float syswidth, sysheight;

class Aim
{
  //Constructor for the aiming reticle
  Aim()
  {
    syswidth = 145;
    sysheight = 85;
  }
  
  void UseAim(float R, float r, float n)
  {
    noFill();
    //To use the aiming reticle
    PVector mouse = new PVector(mouseX, mouseY);
    
    strokeWeight(2);
    stroke(255);
    pushMatrix();
    translate(mouse.x, mouse.y);
    //Loop through n (20) number of times to create and move each arc
    for (i = 0; i <= n; i = i + 1) 
    {
      t[i] = 2 * i * PI/n - PI/4;
      
      //Create every second arc as the inner ones and every other one is the outer ones.
      if (i % 2 == 0) 
      {
        arc(0, 0, 2 * R, 2 * R, t[i], t[i+1]);
      }//End if
      
      else 
      {
        arc(0, 0, 2 * r, 2 * r, t[i], t[i+1]);
      }//End else
    }//End for
    popMatrix();  //Reset the origin to (0, 0)
    var += PI/100;  //Set the speed of the aiming reticle
  }//End UseAim()
  
  void displaySys(float rectx, float recty, float rounded)
  {
    noFill();
    PVector pos = new PVector(rectx + 2, recty);
    strokeWeight(2);
    stroke(44, 157, 232);
    
    pushMatrix();
      translate(pos.x, pos.y);
      //Draw lines along the top of the targeting system
      int j = 1;
      for (i = 7; i <= 133; i += 9)
      {
        
        if (i <= 61)
        {
          j++;
        }//End if
        
        else if (i == 70)
        {
          j = 13;
        }//End if else
        
        else if (i >= 77)
        {
          if (j == 13)
          {
            j = 8;
          }//End inner if
          
          else
          {
            //Start decreasing the size of each line
            j--;
          }//End inner else
        }//End outer else
        line(i, 0, 70, sysheight/6 + j);
      }//End for
      
      //Draw lines at the bottom of the targeting system
      j = 1;
      for (i = 7; i <= 133; i += 9)
      {
        
        if (i <= 61)
        {
          j++;
        }//End if
        
        else if (i == 70)
        {
          j = 13;
        }//End if else
        
        else if (i >= 77)
        {
          if (j == 13)
          {
            j = 8;
          }//End inner if
          
          else
          {
            //Start decreasing the length of each line
            j--;
          }//End inner else
        }//End outer else
        line(i, sysheight, 70, sysheight/1.2 - j);
      }//End for
      
      //Draw lines along the left wall of the targeting system
      j = 1;
      for (float i = sysheight/3; i <= sysheight/3 + 28.3; i += 4.7)
      {
        if (i < sysheight/2)
        {
          j++;
        }//End if
        
        else if (i == sysheight/2)
        {
          j += 5;
        }//End if else
        
        else if (i > sysheight/2)
        {
          if (j == 27)
          {
            j = 22;
          }//End inner if
          
          else
          {
            //Start decreasing the length of each line
            j--;
          }//End inner else
        }//End outer else
        line(0, i, 20 + j, sysheight/2);
      }//End for
      
      //Draw lines along the right wall of the targeting system
      j = 1;
      for (float i = sysheight/3; i <= sysheight/3 + 28.3; i += 4.7)
      {
        if (i < sysheight/2)
        {
          j++;
        }//End if
        
        else if (i == sysheight/2)
        {
          j += 5;
        }//End if else
        
        else if (i > sysheight/2)
        {
          if (j == 27)
          {
            j = 22;
          }//End inner if
          
          else
          {
            //Start decreasing the length of each line
            j--;
          }//End inner else
        }//End outer else
        line(syswidth - 2, i, syswidth - (20 + j), sysheight/2);
      }//End for
    popMatrix();
    strokeWeight(5);
    stroke(0, 0, 51);
    rect(rectx, recty, syswidth, sysheight, rounded);
  }//End displaySys()
  
  void target(float xwx1, float xwy1)
  {
    PVector xwing = new PVector(xwx1, xwy1);
    stroke(239, 35, 109);
    rect(xwing.x, xwing.y, xwidth, xheight, 4);
    rect(xwing.x + 8, xwing.y + 3, 14, 9);
    
    //Display the wings
    stroke(239, 35, 109);
    strokeWeight(3);
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
    fill(239, 35, 109);
    for (i = 0; i <= 2; i++)
    {
      if (i == 1)
      {
        noFill();
      }//End if
      
      stroke(239, 35, 109, 250 - (i * 100));
      ellipse(xwing.x, xwing.y + 2, 5 + (i * 5), 5 + (i * 5));
    }//End for
    
    fill(239, 35, 109);
    for (i = 0; i <= 2; i++)
    {
      if (i == 1)
      {
        noFill();
      }//End if
      
      stroke(239, 35, 109, 250 - (i * 100));
      ellipse(xwing.x + xwidth, xwing.y + 2, 5 + (i * 5), 5 + (i * 5));
    }//End for
    
    fill(239, 35, 109);
    for (i = 0; i <= 2; i++)
    {
      if (i == 1)
      {
        noFill();
      }//End if
      
      stroke(239, 35, 109, 250 - (i * 100));
      ellipse(xwing.x, xwing.y + xheight, 5 + (i * 5), 5 + (i * 5));
    }//End for
    
    fill(239, 35, 109);
    for (i = 0; i <= 2; i++)
    {
      if (i == 1)
      {
        noFill();
      }//End if
      
      stroke(239, 35, 109, 250 - (i * 100));
      ellipse(xwing.x + xwidth, xwing.y + xheight, 5 + (i * 5), 5 + (i * 5));
    }//End for
  }//End xwtarget()
  
  void shoot()
  {
    //Draw two beams
    strokeWeight(7);
    stroke(100, 255, 50);
    line(mouseX, mouseY, 100, height);
    line(mouseX, mouseY, width - 100, height);
    
    if(dist(mouseX, mouseY, xwing1x, xwing1y) < xwidth)
    {
      shot1 = true;
      explosion();
    }//End if
    
    if(dist(mouseX, mouseY, xwing2x, xwing2y) < xwidth)
    {
      shot2 = true;
      explosion();
    }//End if
  }//End shoot()
  
  void explosion()
  {
    
  }//End explosion
}//End class