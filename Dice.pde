int sum;
int hello;
void setup()
{
  size(400, 400);
  
  noLoop();
 
}


void draw()
{
  background(250, 200, 120);
  sum =0;
  for(int x = 55; x <=315; x+=50)
  {
    for (int y = 50; y<= 300; y+=50)
    {
    Die jen = new Die(x, y);
    jen.show();
    
    }
  }
   
  textSize(28);
  text("Your Lucky Number is " + sum + "!", 15, 370);
    
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX;
  int myY;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY= y;
    hello = (int)(Math.random()*6);
    }
  void roll()
  {
    
  }
  void show()
  {
    fill(237, 70, 80);
    rect(myX, myY, 40, 40);
    
    noStroke();
    fill(250);
    
    if( hello== 0)
    {
      ellipse(myX+20, myY+20, 9, 9);
      sum = sum +1;
    }
    else if(hello==1)
    {
      ellipse(myX+9, myY+9, 9, 9);
      ellipse(myX+30, myY+30, 9, 9);
     sum = sum +2;
    }
    else if(hello==2)
    {
      ellipse(myX+9, myY+9, 9, 9);
      ellipse(myX+30, myY+30, 9, 9);
      ellipse(myX+20, myY+20, 9, 9);
      sum = sum + 3;
    }
    else if(hello==3)
     {
      ellipse(myX+9, myY+9, 9, 9);
      ellipse(myX+30, myY+30, 9, 9);
      ellipse(myX+9, myY+30, 9, 9);
      ellipse(myX+30, myY+9, 9, 9);
      sum = sum +4;
     }
     else if(hello==4)
     {
      ellipse(myX+9, myY+9, 9, 9);
      ellipse(myX+30, myY+30, 9, 9);
      ellipse(myX+9, myY+30, 9, 9);
      ellipse(myX+30, myY+9, 9, 9);
      ellipse(myX+20, myY+20, 9, 9);
      sum = sum + 5;
     }
     else 
     {
       ellipse(myX+9, myY+9, 9, 9);
      ellipse(myX+30, myY+30, 9, 9);
      ellipse(myX+9, myY+30, 9, 9);
      ellipse(myX+30, myY+9, 9, 9);
      ellipse(myX+9, myY+20, 9, 9);
      ellipse(myX+30, myY+20, 9, 9);
      sum = sum +6;
     }

  }
}