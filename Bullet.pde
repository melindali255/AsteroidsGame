class Bullet extends Floater {
  Bullet(Spaceship theShip) {
    corners = 12; //the number of corners, a triangular floater has 3   
    int[] myXCorners = {-14, -7, -4, 8, 16, 8, -4, -7, -14, -11, -14, -11};
    xCorners = myXCorners;
    int[] myYCorners = {-11, -11, -8, -8, 0, 8, 8, 11, 11, 8, 0, -8};
    yCorners = myYCorners;
    myColor = #878DF2;   
    myCenterX = theShip.getX(); 
    myCenterY = theShip.getY(); 
    myPointDirection = theShip.getPointDirection(); //holds current direction the ship is pointing in degrees
    myDirectionX = 5 * Math.cos(myPointDirection*(Math.PI/180)) + theShip.getDirectionX();
    myDirectionY = 5 * Math.sin(myPointDirection*(Math.PI/180)) + theShip.getDirectionY();
  }
  public void move() {
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;
  }

  public void show() {
    fill(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
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