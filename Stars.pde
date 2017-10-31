class Stars //note that this class does NOT extend Floater
{
  private int myX;
  private int myY;
  private int starColor;
  public Stars() {
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
    starColor = ((int)(Math.random()*256));
  }
  public void show() {
    fill(starColor);
    noStroke();
    ellipse(myX, myY, 2, 2);
  }
}
