private int limit = 400;
private int xPos = 100;
private int yPos = 300;
public void setup()
{
  size(400,400);
}
public void draw()
{
  sierpinski(xPos,yPos,200);
  sierpinski(xPos-(2*xPos),yPos,200);
  sierpinski(xPos+(2*xPos),yPos,200);
  sierpinski(xPos-xPos,yPos-(xPos*2),200);
  sierpinski(xPos+xPos,yPos-(xPos*2),200);
  sierpinski(xPos-xPos,yPos+(xPos*2),200);
  sierpinski(xPos+xPos,yPos+(xPos*2),200);
}
public void mouseDragged()//optional
{
  if (mouseX > 1) {
    limit = mouseX;
  }
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= limit) {
    triangle(x,y, x + len, y, x+len/2, y-len);
  }else {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
