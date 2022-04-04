class Paddles {
  float x, y, WIDTH, HEIGHT, speed, outsideR, outsideL, outsideD, outsideU;
  color colour;
  int up, down;
  Paddles(float xParameter, float yParameter, float WIDTHParameter, float HEIGHTParameter, color colourParameter, float speedParameter, int upParameter, int downParameter ) {
    this.x = xParameter;
    this.y = yParameter;
    this.WIDTH = WIDTHParameter;
    this.HEIGHT = HEIGHTParameter;
    this.colour = colourParameter;
    this.speed = speedParameter;
    this.up = upParameter;
    this.down = downParameter;
    this.outsideR = x+WIDTH;
    this.outsideL = x;
    this.outsideU = y;
    this.outsideD = y+HEIGHT;
  }

  void draw() {
    fill(colour);
    rect(x, y, WIDTH, HEIGHT);
    move();
    bounce();
  }
  void move() {
      if (keyPressed) {
        if (keyCode == up) {
          if (y+HEIGHT < height) {
            y = y+speed;
          }
        } else if (keyCode == down) {
          if (y > 0) {
            y = y-speed;
          }
        }
      }
    
  }
  void bounce() {
  }
}
