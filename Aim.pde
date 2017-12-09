float[] t = new float[1000];
float syswidth, sysheight;

class Aim
{
  //Constructor for the aiming reticle
  Aim()
  {
    noFill();
    syswidth = 145;
    sysheight = 85;
  }
  
  void UseAim(float R, float r, float n)
  {
    //To use the aiming reticle
    PVector mouse = new PVector(mouseX, mouseY);
    strokeWeight(2);
    stroke(255);
    
    pushMatrix();
    translate(mouse.x, mouse.y);
    
    //Loop through n (20) number of times to create and move each arc
    for (int i = 0; i <= n; i = i + 1) 
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
    PVector pos = new PVector(rectx + 2, recty);
    strokeWeight(2);
    stroke(44, 157, 232);
    //Draw the lines to give the targeting system a more authentic feel
    pushMatrix();
      translate(pos.x, pos.y);
     
     /*
      line(0, 0, mouseX - pos.x, sysheight/4);
      line(9, 0, mouseX - pos.x, sysheight/4);
      line(18, 0, mouseX - pos.x, sysheight/4);
      line(27, 0, mouseX - pos.x, sysheight/4);
      line(36, 0, mouseX - pos.x, sysheight/4);
      line(45, 0, mouseX - pos.x, sysheight/4);
      line(54, 0, mouseX - pos.x, sysheight/4);
      line(63, 0, mouseX - pos.x, sysheight/4);
      
      line(72, 0, mouseX - pos.x, sysheight/4);
      
      line(81, 0, mouseX - pos.x, sysheight/4);
      line(90, 0, mouseX - pos.x, sysheight/4);
      line(99, 0, mouseX - pos.x, sysheight/4);
      line(108, 0, mouseX - pos.x, sysheight/4);
      line(117, 0, mouseX - pos.x, sysheight/4);
      line(126, 0, mouseX - pos.x, sysheight/4);
      line(135, 0, mouseX - pos.x, sysheight/4);
      line(144 - 2, 0, mouseX - pos.x, sysheight/4);
      println(mouseX - pos.x);
      */
      
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
      
      /*
      line(7, 0, 70, sysheight/6 + 2);
      line(16, 0, 70, sysheight/6 + 3);
      line(25, 0, 70, sysheight/6 + 4);
      line(34, 0, 70, sysheight/6 + 5);
      line(43, 0, 70, sysheight/6 + 6);
      line(52, 0, 70, sysheight/6 + 7);
      line(61, 0, 70, sysheight/6 + 8);
      
      line(70, 0, 70, sysheight/6 + 13);
      
      line(79, 0, 70, sysheight/6 + 8);
      line(88, 0, 70, sysheight/6 + 7);
      line(97, 0, 70, sysheight/6 + 6);
      line(106, 0, 70, sysheight/6 + 5);
      line(115, 0, 70, sysheight/6 + 4);
      line(124, 0, 70, sysheight/6 + 3);
      line(133, 0, 70, sysheight/6 + 2);
      */
      
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
            //Start decreasing the size of each line
            j--;
          }//End inner else
        }//End outer else
        line(i, sysheight, 70, sysheight/1.2 - j);
      }//End for
    popMatrix();
    strokeWeight(5);
    stroke(0, 0, 51);
    rect(rectx, recty, syswidth, sysheight, rounded);
    
  }//End displaySys()
}//End class