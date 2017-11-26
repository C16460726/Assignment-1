Radar r1;


void setup()
{
  size(600, 600);
  r1 = new Radar(255);
}

void draw()
{
  background(0);
  r1.display();
  
  if (dist(rx, ry, mouseX, mouseY) <= rd/2 && mousePressed == true)
    {
      r1.RadarUse();
    }
    
    background(0);
  r1.display();
  
  if (dist(rx, ry, mouseX, mouseY) <= rd/2 && mousePressed == true)
    {
      r1.RadarUse();
    }
}