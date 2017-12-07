Radar r1;
Aim a;
Border b;
float var;

void setup()
{
  size(900, 800);
  b = new Border();
  r1 = new Radar();
  a = new Aim();
}//End setup()

void draw()
{
  background(0);
   
  //Display the radar
  r1.display(255);
    
  //Only display the aiming reticle if the mouse is not hovering over the radar
  if (dist(rx, ry, mouseX, mouseY) >= rd/2 && mousePressed == true)
  {
     r1.display(255);
     a.UseAim(50 * abs(cos(var)) + 17, 50 * abs(sin(var)) + 55, 20);
  }//End if
  
  b.displayB(width/2, height/2, 80);
}//End draw()