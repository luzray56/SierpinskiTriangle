public void setup()
{
	size(800,800);
	background(0);
}
public void draw()
{
	sierpinski(400, 50, 700);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	triangle(x,y,x+len/2,y+len,x-len/2,y+len);
 	if (len<=20) {}
 	else 
 	{
 		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 	    sierpinski(x,y,len/2);
 	    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  		sierpinski(x+len/4,y+len/2,len/2);
  		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 	    sierpinski(x-len/4,y+len/2,len/2);
	}
}