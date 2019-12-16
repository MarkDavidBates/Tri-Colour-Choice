class Flag{
  
///////////////
// Variables //
///////////////
  
  private int xCoord;
  private int yCoord;
  private int diameter;
  private int red;
  private int green;
  private int blue;
  
//////////////////
// Constructors //  
//////////////////
  
  Flag()            //Default constructors
  {                 
  }
                    
  void colour()
  {
  }
  
  Flag(int xCoord, int yCoord, int diameter)
  {
    this.xCoord = xCoord;
    this. yCoord = yCoord;
    this. diameter = diameter;
  }
  
  void colour(int red, int green, int blue)
  {
    this.red = red;
    this.green = green;
    this.blue = blue;
    fill(red,green,blue);
  }
  
/////////////
// Methods //
/////////////
  
/*This method sets the start and finish of the circles for the flag*/
  
  void drawFlag(int start, int finish)
  {
    for (int yCoord = 60; yCoord <= height-60; yCoord += 20)
  {
    for(int xCoord = start; xCoord < finish; xCoord += 20)
    {
      ellipse(xCoord,yCoord,diameter,diameter);
    }
  }
  }
  
/////////////
// Getters //  
/////////////

public int getXCoord()
{
  return xCoord;
}

public int getYCoord()
{
  return yCoord;
}

public int getDiameter()
{
  return diameter;
}

public int getRed()
{
  return red;
}

public int getGreen()
{
  return green;
}

public int getBlue()
{
  return blue;
}

/////////////
// Setters //
/////////////

public void setXCoord(int xCoord)
{
  this.xCoord = 50;
}

public void setYCoord(int yCoord)
{
  this.yCoord = 60;
}

public void setDiameter(int diameter)
{
  this.diameter = 10;
}

public void setRed(int red)
{
  this.red = red;
}

public void setGreen(int green)
{
  this.green = green;
}

public void setBlue(int blue)
{
  this.blue = blue;
}

}
