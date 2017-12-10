float speed;

class Star
{
  float locx, locy;
  float size = random(1, 10);
  float z;
  float sx, sy;
  float pz, px, py;
  
  Star()
  {
    speed = 10;
    z = random(width);
    locx = random(-width/2,width/2);
    locy = random(-height/2,height/2);
    pz = z;
  }//End constructor
  
  void backgroundS()
  {
    noStroke();
    fill(255);
    
    sx = map(locx / z, 0,1, 0,width);
    sy = map(locy / z, 0,1, 0,height);
    
    ellipse(sx,sy,size,size);
    
    px = map(locx / pz, 0,1, 0,width);
    py = map(locy / pz, 0,1, 0,height);
    
    pz = z;
    stroke(220,225,242);
    strokeWeight(size);
    line(px,py,sx,sy);
  }
  
  boolean timeToReset()
  {
    if (z < 1)
    {
      return true;
    }
    
    else 
    {
      return false;
    }
  }
  
  void travel()
  {
    z = z - speed;
    if (timeToReset())
    {
      z = width;
    }//End if
  }
  
}//End class