//your variable declarations here
Asteroid[] rock = new Asteroid[20];
Spaceship ship;
Stars[] starArray = new Stars[125];
public void setup() 
{
  background(0);
  size(400, 400);
  for (int i = 0; i < starArray.length; i++) {
    starArray[i] = new Stars();
  }
  for (int i = 0; i < rock.length; i++) {
    rock[i] = new Asteroid();
  }
  ship = new Spaceship();
}
public void draw() 
{
  background(0);
  for (int i = 0; i < starArray.length; i++) {
    starArray[i].show();
  }
  for (int i = 0; i < rock.length; i++) {
  rock[i].show();
  rock[i].move();
  }
  ship.show();
  ship.move();
}
public void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      ship.turn(-3);
    }
    else if (keyCode == RIGHT) {
      ship.turn(3);
    }
    else if (keyCode == UP) {
      ship.accelerate(0.5);
    }
  }
  else if (key == ' ') {
    ship.setX((int)(Math.random()*400));
    ship.setY((int)(Math.random()*400));
    ship.setDirectionX(0);
    ship.setDirectionY(0);
    ship.setPointDirection((int)(Math.random()*360));
  }
}