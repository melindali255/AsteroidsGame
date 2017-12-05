class Health {
  private double health = 200;
  Health() {
  }
  public void show() {
    //outline of health bar
    stroke(255);
    strokeWeight(3);
    fill(0);
    rect(10, 470, 50, 20);
    //healthbar
    fill(#A3D88E);
    noStroke();
    if (health > 0) {
    rect(12, 472, (float)(48 * (health/200)) , 18);
    }
  }
  
  public void setHealth(int change) {
    if (health != 0) {
    health += change;
    }
  }
  
  public double getHealth() {
    return health;
  }
}