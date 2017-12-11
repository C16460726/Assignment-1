Star[] space;
Radar r1;
Aim a, target, xwtarget;
Border b;
Symbol s;
DeathStar ds;
Xwing xw, xw2, shot;

float xwing1x, xwing1y, xwing2x, xwing2y;
float var;
float numxw;

void setup()
{
  size(900, 800);
  
  space = new Star[500];
  for(i = 0; i < space.length; i++)
  {
    space[i] = new Star();
  }//End for
  
  xw = new Xwing();
  xw2 = new Xwing();
  shot = new Xwing();
  ds = new DeathStar();
  b = new Border();
  s = new Symbol();
  r1 = new Radar();
  a = new Aim();
  target = new Aim();
  xwtarget = new Aim();
  
  xwing1x = 300;
  xwing1y = 365;
  xwing2x = 500;
  xwing2y = 360;
}//End setup()

void draw()
{
  background(0);
   pushMatrix();
     translate(width/2, height/2);
     for(i = 0; i < space.length; i++)
     {
        space[i].travel();
        space[i].backgroundS();
     }//End for
   popMatrix(); 
  //Display the radar
  r1.display(255); 
  
  xw.displayxw(xwing1x, xwing1y);
  xw2.displayxw(xwing2x, xwing2y);
  
  //display the window frame of the TIE fighter in the center of the screen 
  b.displayB(width/2, height/2, 225);
  
  //s.displayS();
  
  //Display the targeting system
  target.displaySys(485, 630, 8);
  
  //Only display the aiming reticle if the mouse is not hovering over the radar
  if (dist(rx, ry, mouseX, mouseY) >= rd/2)
  {
     //Call the radar display function again to increase the speed of the radar while aiming
     r1.display(255);
     a.UseAim(50 * abs(cos(var)) + 17, 50 * abs(sin(var)) + 55, 20);
     
     if (dist(mouseX, mouseY, 315, 365) < xwidth/2 || dist(mouseX, mouseY, 515, 360) < xwidth/2)
     {
       xwtarget.target(543, 665);
     }
  }//End if
}//End draw()