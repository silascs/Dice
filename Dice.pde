
int dots;

void setup()
{
	noLoop();
}
void draw()
{
	//your code here
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		dots = (int)((Math.random()*6)+1);  
	}
	void roll()
	{
		if (dots == 1)
		{
			ellipse(myX + 50, myY + 50, 15, 15);
		}
		else if (dots == 2)
		{
			ellipse(myX + 25, myY + 25, 15, 15);
			ellipse(myX + 75, myY + 75, 15, 15);
		}
		else if (dots == 3)
		{
			ellipse(myX + 50, myY + 50, 15, 15);
			ellipse(myX + 25, myY + 25, 15, 15);
			ellipse(myX + 75, myY + 75, 15, 15);
		}
		else if (dots == 4)
		{

		}
		else if (dots == 5)
		{

		}
		else if (dots == 6)
		{

		}
	}
	void show()
	{
		//your code here
	}
}
