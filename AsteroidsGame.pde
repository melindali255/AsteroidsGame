//your variable declarations here
ArrayList<Asteroid> rock = new ArrayList<Asteroid>();
Spaceship ship;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
Stars[] starArray = new Stars[125];
public void setup() 
{
  background(0);
  size(500, 500);
  for (int i = 0; i < starArray.length; i++) {
    starArray[i] = new Stars();
  }
  for (int i = 0; i < 20; i++) {
    rock.add(new Asteroid());
  }
  ship = new Spaceship();
}
public void draw() 
{
  background(0);
  for (int i = 0; i < starArray.length; i++) {
    starArray[i].show();
  }
  for (int i = 0; i < rock.size(); i++) {
    rock.get(i).show();
    rock.get(i).move();
  }
  ship.show();
  ship.move();

  // collision check
  for (int i = 0; i < rock.size(); i++) {
    if (dist(rock.get(i).getX(), rock.get(i).getY(), ship.getX(), ship.getY()) < 25) {
      rock.remove(i);
    }
  }
  if (bullets.size() > 0) {
    for (int i = 0; i < bullets.size(); i++ ) {
      bullets.get(i).show();
      bullets.get(i).move();
      if (bullets.get(i).getX() < 0 || bullets.get(i).getX() > 500 || bullets.get(i).getY() < 0 || bullets.get(i).getY() > 500) {
        bullets.remove(i);
      }
    }
  }
}
public void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      ship.turn(-3);
    } else if (keyCode == RIGHT) {
      ship.turn(3);
    } else if (keyCode == UP) {
      ship.accelerate(0.5);
    } else if (keyCode == DOWN) {
      ship.accelerate(-0.25);
    }
  } else if (key == ENTER) {
    ship.setX((int)(Math.random()*400));
    ship.setY((int)(Math.random()*400));
    ship.setDirectionX(0);
    ship.setDirectionY(0);
    ship.setPointDirection((int)(Math.random()*360));
  } else if (key == ' ') {
    bullets.add(new Bullet(ship));
  }
}