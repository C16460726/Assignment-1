Radar r1;
Aim a;
float var;

void setup()
{
  size(900, 800);
  r1 = new Radar();
  a = new Aim();
}//End setup()

void draw()
{
   background(0);
    r1.display(255);
    
    if (dist(rx, ry, mouseX, mouseY) >= rd/2 && mousePressed == true)
    {
      r1.display(255);
       a.UseAim(50 * abs(cos(var)) + 17, 50 * abs(sin(var)) + 55, 20);
    }//End if
}//End draw()