class Paddles {
  float x, y, WIDTH, HEIGHT, speed;
  color colour;
  Paddles(float xParameter, float yParameter, float WIDTHParameter, float HEIGHTParameter, color colourParameter, float speedParameter) {
    this.x = xParameter;
    this.y = yParameter;
    this.WIDTH = WIDTHParameter;
    this.HEIGHT = HEIGHTParameter;
    this.colour = colourParameter;
    this.speed = speedParameter;
  }
  
  void draw() {
    move();
    bounce();
  }
  void move(){
    
  }
  void bounce(){
    
    
  }
  
}
