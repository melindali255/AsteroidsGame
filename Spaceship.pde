class Spaceship extends Floater  
{   
  private int myHealth;
  public Spaceship() {
    corners = 12; //the number of corners, a triangular floater has 3   
    int[] myXCorners = {-14, -7, -4, 8, 16, 8, -4, -7, -14, -11, -14, -11};
    xCorners = myXCorners;
    int[] myYCorners = {-11, -11, -8, -8, 0, 8, 8, 11, 11, 8, 0, -8};
    yCorners = myYCorners;
    myColor = #878DF2;   
    myCenterX = 250; 
    myCenterY = 250; 
    myDirectionX = 0;
    myDirectionY = 0;//holds x and y coordinates of the vector for direction of travel   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees
    myHealth = 200;
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
  public void setHealth(int change) {
    myHealth += change;
  }
  public int getHealth() {
    return myHealth;
  }
}