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
    /*for (i = 0; i <= 27; i++)
    {
      line(i * 5, 0, syswidth/(8 - i), sysheight/4);
      //line(5, 0, syswidth/7, sysheight/4);
    }//End for*/
    
    line(0, 0, syswidth/8, sysheight/4);
    line(9, 0, (syswidth/8) + 9, sysheight/4);
    line(18, 0, (syswidth/8) + 17, sysheight/4);
    line(27, 0, (syswidth/8) + 24, sysheight/4);
    line(36, 0, (syswidth/8) + 30, sysheight/4);
    line(45, 0, (syswidth/8) + 35, sysheight/4);
    line(54, 0, (syswidth/8) + 39, sysheight/4);
    line(63, 0, (syswidth/8) + 42, sysheight/4);
    
    line(72, 0, (syswidth/8) + 44, sysheight/4);
    
    line(81, 0, (syswidth/8) + 47, sysheight/4);
    line(90, 0, (syswidth/8) + 51, sysheight/4);
    line(99, 0, (syswidth/8) + 56, sysheight/4);
    line(108, 0, (syswidth/8) + 62, sysheight/4);
    line(117, 0, (syswidth/8) + 69, sysheight/4);
    line(126, 0, (syswidth/8) + 77, sysheight/4);
    line(135, 0, (syswidth/8) + 86, sysheight/4);
    line(144 - 2, 0, (syswidth/8) + 96, sysheight/4);
   
    popMatrix();
    //translate(rectx + (syswidth/2), recty + (sysheight/4)); 

    strokeWeight(5);
    stroke(0, 0, 51);
    rect(rectx, recty, syswidth, sysheight, rounded);
    
  }//End displaySys()
}//End class