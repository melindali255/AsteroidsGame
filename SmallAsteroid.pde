class SmallAsteroid extends Asteroid {
  private int rotSpeed;
  SmallAsteroid() {
    corners = 9; //the number of corners, a triangular floater has 3   
    int[] myXCorners = {-4, -2, -1, 2, 3, 4, 2, -1, -4};
    xCorners = myXCorners;
    int[] myYCorners = {2, 3, 4, 4, 3, -1, -4, -4, -2};
    yCorners = myYCorners;
    myColor = (int)(Math.random()*50 + 100);
    //myCenterX = (int)(Math.random()*500);
    myCenterX = super.getX();
    //myCenterY = (int)(Math.random()*500);
    myCenterY = super.getY();
    myDirectionX = Math.random()*4 - 2;
    myDirectionY = Math.random()*4 - 2;
    myPointDirection = 0; //holds current direction the ship is pointing in degrees
    rotSpeed = 0;
    while (rotSpeed == 0) {
      rotSpeed = (int)(Math.random()*4 - 2);
    }
  }
}