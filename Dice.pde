
Die jen;
void setup()
{
	size(400, 400);
	noLoop();
	background(0);
	

}
void draw()
{
	for(int x = 50; x <=310; x+=50)
	{
		for (int y = 50; y<= 300; y+=50)
		{
		Die jen = new Die(x, y);
		jen.show();
		jen.roll();
		}

	

	}
	
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
		}
	void roll()
	{
		
	}
	void show()
	{
		fill(200, 70, 80);
		rect(myX, myY, 40, 40);
		int hello = (int)(Math.random()*6);
		
	
		if( hello== 0)
		{
			ellipse(myX+20, myY+20, 10, 10);
		}
		else if(hello==1)
		{
			ellipse(myX+10, myY+10, 10, 10);
			ellipse(myX+30, myY+30, 10, 10);
		}
		else if(hello==2)
		{
			ellipse(myX+10, myY+10, 10, 10);
			ellipse(myX+30, myY+30, 10, 10);
			ellipse(myX+20, myY+20, 10, 10);
		}
		else if(hello==3)
 		{
 			ellipse(myX+10, myY+10, 10, 10);
			ellipse(myX+30, myY+30, 10, 10);
			ellipse(myX+10, myY+30, 10, 10);
			ellipse(myX+30, myY+10, 10, 10);
 		}
 		else if(hello==4)
 		{
 			ellipse(myX+10, myY+10, 10, 10);
			ellipse(myX+30, myY+30, 10, 10);
			ellipse(myX+10, myY+30, 10, 10);
			ellipse(myX+30, myY+10, 10, 10);
			ellipse(myX+20, myY+20, 10, 10);
 		}
 		else 
 		{
 			ellipse(myX+10, myY+10, 10, 10);
			ellipse(myX+30, myY+30, 10, 10);
			ellipse(myX+10, myY+30, 10, 10);
			ellipse(myX+30, myY+10, 10, 10);
			ellipse(myX+10, myY+20, 10, 10);
			ellipse(myX+30, myY+20, 10, 10);
 		}

	}
}
