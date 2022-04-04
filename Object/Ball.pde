class Balls {
  float x, y, diameter, xSpeed, ySpeed, outsideRight, outsideLeft;
  color colour;
  Balls(float xParameter, float yParameter, float diameterParameter, color colourParameter) {
    this.x = xParameter;
    this.y = yParameter;
    this.diameter = diameterParameter;
    this.colour = colourParameter;
    this.xSpeed = (int(random(-2, 2))*((1/diameter)*100));
    this.ySpeed = 0.5;
  }//endconstructor
  void draw() {
    fill(colour);
    ellipse(x, y, diameter, diameter);
    bounce();
    move();
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
    if ((x+(diameter/2) >= width) || (x-(diameter/2) >= width) || (x-(diameter/2) <= 0) || (x+(diameter/2) <= 0) ) {
      x = width/2;
      y = height/2;
      xSpeed = (int(random(-2, 2))*((1/diameter)*100));
    }
  }//endbounce
}//end Balls 
