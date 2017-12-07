float[] t = new float[1000];

class Aim
{
  //Constructor for the aiming reticle
  Aim()
  {
    noFill();
  }
  
  void UseAim(float R, float r, float n)
  {
    //To use the aiming reticle
    PVector mouse = new PVector(mouseX, mouseY);
    strokeWeight(5);
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
    var += PI/100;  //Set the speedof the aiming reticle
  }//End UseAim()
}//End class