import javax.swing.*;
Flag sp;                      //importing Flag class

//Array variables for the RGB colour choices

int red[] = new int[3];
int green[] = new int[3];
int blue[] = new int[3];
int sum = 0;

void setup()
{
  noStroke();
  size(550,400);            //size of border
  
  for (int i = 0; i < 3 ; i ++)
  {    
    red[i] = Integer.parseInt(JOptionPane.showInputDialog("Please enter your RGB Red options ", "0"));
    green[i] = Integer.parseInt(JOptionPane.showInputDialog("Please enter your RGB Green options ", "0"));            //Strings for declaring your colour choices
    blue[i] = Integer.parseInt(JOptionPane.showInputDialog("Please enter your RGB Blue options ", "0"));
  }

  for (int i = 0; i < 3 ; i ++)            //displaying the data in the console
  {
    sum += red[i];
    sum += green[i];
    sum += blue[i];
    println("Red option " + (i+1) + " is: " + red[i]);
    println("Green option " + (i+1) + " is: " + green[i]);
    println("Blue option " + (i+1) + " is: " + blue[i]);
  }
  sp = new Flag(50,60,10);          //declaring starting X/Y coord and diameter of circles for flag
}

int colNum = 3;          //colNum = column number

void draw()
{
  for(int i = 0; i < colNum; i++)            //setting up colour coordinates for each column
  {
     sp.colour(red[i],green[i],blue[i]);
     sp.drawFlag(i*(width/colNum), (i+1)*width/colNum);
  }
}
