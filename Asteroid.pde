class Asteroid extends Floater {
  private int rotSpeed;
  Asteroid() {
    corners = 9; //the number of corners, a triangular floater has 3   
    int[] myXCorners = {-8, -4, -3, 4, 7, 8, 4, -3, -8};
    xCorners = myXCorners;
    int[] myYCorners = {4, 6, 9, 9, 6, -2, -8, -8, -5};
    yCorners = myYCorners;
    myColor = (int)(Math.random()*50 + 100);
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myDirectionX = Math.random()*4 - 2;
    myDirectionY = Math.random()*4 - 2;
    myPointDirection = 0; //holds current direction the ship is pointing in degrees
    rotSpeed = 0;
    while (rotSpeed == 0) {
    rotSpeed = (int)(Math.random()*4 - 2);
    }
  }

  public void move() {
    turn(rotSpeed);
    super.move();
  }

  public void setX(int x) {
    myCenterX = x;
  }  
  public int getX() {
    return (int)(myCenterX);
  }   
  public void setY(int y) {
    myCenterY = y;
  }   
  public int getY() {
    return (int)(myCenterY);
  }   
  public void setDirectionX(double x) {
    myDirectionX = x;
  }   
  public double getDirectionX() {
    return myDirectionX;
  }   
  public void setDirectionY(double y) {
    myDirectionY = y;
  }   
  public double getDirectionY() {
    return myDirectionY;
  }   
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }   
  public double getPointDirection() {
    return myPointDirection;
  }
}