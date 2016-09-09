
Die jen;
void setup()
{
	size(400, 400);
	noLoop();

}
void draw()
{
	background(0);
	jen = new Die(200, 200);
	jen.show();
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
		myX = 200;
		myY= 200;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		rect(myX, myY, 40, 40);
		fill(150);
		ellipse(myX+20, myY+20, 10, 10);
	}
}
