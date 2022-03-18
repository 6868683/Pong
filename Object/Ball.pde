class Balls {
  float x, y, diameter, xSpeed, ySpeed, outsideRight, outsideLeft;
  color colour;
  Balls(float xParameter, float yParameter, float diameterParameter, color colourParameter) {
    this.x = xParameter;
    this.y = yParameter;
    this.diameter = diameterParameter;
    this.colour = colourParameter;
    this.xSpeed = (int(random(-2, 2))*((1/diameter)*10));
    this.ySpeed = 0.5;
    this.outsideRight = x+(diameter/2);
    this.outsideLeft = x-(diameter/2);
  }//endconstructor
  void draw() {
    fill(colour);
    ellipse(x, y, diameter, diameter);
    move();
    bounce();
  }//enddraw
  void move() {
    x += xSpeed;
    y += ySpeed;
    if (xSpeed == 0) {
      xSpeed = xSpeed+int(random(-2, 2));
    }
  }//endmove
  void bounce() {
    if ((y+(diameter/2) > height) || (y-(diameter/2) > height) || (y+(diameter/2) < 0) || (y-(diameter/2) < 0) ) {
      ySpeed = ySpeed * -1;
    }
    if ((outsideRight > width) || (outsideLeft > width) || (outsideLeft < 0) || (outsideRight < 0) ) {
      x = width/2;
      y = height/2;
    }
  }//endbounce
}//end Balls 
