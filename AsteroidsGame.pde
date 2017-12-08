//your variable declarations here
ArrayList<Asteroid> rock = new ArrayList<Asteroid>();
Spaceship ship;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
Stars[] starArray = new Stars[150];
Health shipHealth = new Health();
int score = 0;
int level = 1;
int asteroidNumber = 15 + 10*(level-1);
public void setup() 
{
  background(0);
  size(500, 500);
  for (int i = 0; i < starArray.length; i++) {
    starArray[i] = new Stars();
  }
  for (int i = 0; i < asteroidNumber; i++) {
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
  shipHealth.show();
  //score
  textAlign(RIGHT);
  textSize(20);
  text("Score: " + score, 500, 500);

  // collision check
  for (int i = 0; i < rock.size(); i++) {
    if (dist(rock.get(i).getX(), rock.get(i).getY(), ship.getX(), ship.getY()) < 25) {
      rock.remove(i);
      shipHealth.setHealth(-25);
    }
  }
  //movement and collision between bullets
  if (bullets.size() > 0) {
    for (int i = 0; i < bullets.size(); i++ ) {
      bullets.get(i).show();
      bullets.get(i).move();
      for (int j = 0; j < rock.size(); j++) {
        if (dist(rock.get(j).getX(), rock.get(j).getY(), bullets.get(i).getX(), bullets.get(i).getY()) < 20) {
          rock.remove(j);
          //rock.add(new SmallAsteroid());
          bullets.remove(i);
          score += 10;
          break;
        }
      }
    }
  }

  //END GAME
  //losing game
  if (shipHealth.getHealth() <= 0) {
    ship.setDirectionX(0);
    ship.setDirectionY(0);
    textAlign(CENTER);
    textSize(26);
    fill(#F05A5A);
    text("GAME OVER", 250, 250);
    text("PRESS ENTER TO RESTART", 250, 275);
    if (keyPressed == true) {
      if (key == ENTER) {
        //restart game
        for (int i = rock.size(); i < 20; i++) {
          rock.add(new Asteroid());
        }
        ship = new Spaceship();
        shipHealth.setHealth(200);
        score = 0;
        level = 1;
      }
    }
  }
  //winning game
  if (rock.size() == 0 && shipHealth.getHealth() > 0) {
    ship.setDirectionX(0);
    ship.setDirectionY(0);
    textAlign(CENTER);
    textSize(26);
    fill(#A3D88E);
    text("YOU WIN!", 250, 250);
    text("PRESS ENTER TO CONTINUE", 250, 275);

    if (keyPressed == true) {
      if (key == ENTER) {
        //next level
        level += 1;
        for (int i = rock.size(); i < asteroidNumber; i++) {
          rock.add(new Asteroid());
        }
        ship = new Spaceship();
        if (level == 3) {
          shipHealth.restartHealth();
        }
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