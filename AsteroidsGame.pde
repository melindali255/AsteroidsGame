//your variable declarations here
Spaceship ship;
public void setup() 
{
  background(0);
  size(400, 400);
  ship = new Spaceship();
}
public void draw() 
{
  background(0);
  ship.show();
  ship.move();
}
public void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      ship.turn(-3);
    }
    else if (keyCode == LEFT) {
      ship.turn(3);
    }
    else if (keyCode == UP) {
      ship.accelerate(1);
    }
  }
  else if (key == ' ') {
    ship.setX((int)(Math.random()*400));
    ship.setY((int)(Math.random()*400));
    ship.setDirectionX(0);
    ship.setDirectionY(0);
  }
}