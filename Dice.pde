
int dots;
int sum;

void setup()
{
	noLoop();
	size(800,800);
}
void draw()
{
	sum = 0;
	textAlign(CENTER, CENTER);
	
	for (int y = 0; y < 801; y += 100)
	{
		for(int x = 0; x < 801; x += 100)
		{
			Die bob = new Die(x, y);
			bob.show();
			bob.roll();
			sum += dots;
		}
	}
	textSize(100);
	text(sum, 400, 400);
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
		fill(0);
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
			ellipse(myX + 25, myY + 25, 15, 15);
			ellipse(myX + 75, myY + 75, 15, 15);
			ellipse(myX + 25, myY + 75, 15, 15);
			ellipse(myX + 75, myY + 25, 15, 15);
		}
		else if (dots == 5)
		{
			ellipse(myX + 25, myY + 25, 15, 15);
			ellipse(myX + 75, myY + 75, 15, 15);
			ellipse(myX + 25, myY + 75, 15, 15);
			ellipse(myX + 75, myY + 25, 15, 15);
			ellipse(myX + 50, myY + 50, 15, 15);
		}
		else if (dots == 6)
		{
			ellipse(myX + 25, myY + 25, 15, 15);
			ellipse(myX + 75, myY + 75, 15, 15);
			ellipse(myX + 25, myY + 75, 15, 15);
			ellipse(myX + 75, myY + 25, 15, 15);
			ellipse(myX + 50, myY + 25, 15, 15);
			ellipse(myX + 50, myY + 75, 15, 15);
			
		}
	}
	void show()
	{
		fill(255);
		rect(myX, myY, 100, 100);
	}
}
