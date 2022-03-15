class Balls {
  float x, y, diameter, xSpeed, ySpeed;
  color colour;
  Balls(float xParameter, float yParameter, float diameterParameter, color colourParameter) {
    this.x = xParameter;
    this.y = yParameter;
    this.diameter = diameterParameter;
    this.colour = colourParameter;
    this.xSpeed = ((1/diameter)*100);
    this.ySpeed = 1;
  }

  void draw() {
    fill(colour);
    ellipse(x, y, diameter, diameter);
    move();
    bounce();
  }
  void move() {
    x += xSpeed;
    y += ySpeed;
  }
  void bounce() {
    float outsideRight =x+(diameter/2);
    float outsideLeft =x-(diameter/2);
    if ((outsideRight > width) || (outsideLeft > width) || (outsideLeft < 0) || (outsideRight < 0) ) {
      xSpeed = xSpeed * -1;
    }

    if ((y+(diameter/2) > height) || (y-(diameter/2) > height) || (y+(diameter/2) < 0) || (y-(diameter/2) < 0) ) {
      ySpeed = ySpeed * -1;
    }
  }
}//end Balls
