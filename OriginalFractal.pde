int r = 0;
int c = 0;
public void setup() 
{
	size(600,600);
	colorMode(HSB,100);
}
public void draw() 
{	
	noStroke();
	if (c>99)
	{
		c = 0;
	}
	if(r > 359) 
		r = 0;

	translate(300,300);
	rotate(radians(r));
	background(c+30,50,50);
	spiral(15);
	r++;
	c++;
}
public void spiral(int fib)
{

	int radius = fibonacci(fib);
	if (fib>1)
	{
		rotate(radians(30));
		spiralPart(radius);
		spiral(fib-1);
	}
	else
	{
		spiralPart(radius);
	}
}
public void spiralPart(int radius) 
{
	fill(c,100,100,70);
		ellipse(0,-radius,radius,radius);
		fill(c,100,100,40);
		ellipse(0,radius,radius,radius);
		fill(c,100,100,60);
		ellipse(-radius,0,radius,radius);
		fill(c,100,100,20);
		ellipse(radius,0,radius,radius);
}
public int fibonacci(int n) 
{
  if(n==0)
  {
    return 0;
  }
  else if(n==1)
  {
    return 1;
  }
  else
  {
    return fibonacci(n-2) + fibonacci(n-1);
  }
}