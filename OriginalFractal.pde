public void setup() 
{
	size(400,400);
	elsa(200,200,150);
}
public void draw() 
{
	
}
public void elsa(int centerX, int centerY, int flen)
{
	fill(255);
	if (flen >= 5)
	{

	}
	else
	{
		int i = 0;
		while (i<=6)
		{
			line(centerX,centerY,centerX-flen, centerY);
			//elsa();
			//elsa();
			rotate(PI/3.0);
			i++;
		}
		rotate(-2*PI);
	}
}
