Balls pongBalls;
Paddles paddle1;
Paddles paddle2;

void setup() {
  surface.setResizable(true);
  size(1000, 500);
  pongBalls = new Balls(width/2, height/2, int(width*1/40), color(255, 255, 255));
  paddle1  = new Paddles(width/50, height/10, width/50, height/5, color(255, 255, 255), 15, DOWN, UP);
    paddle2  = new Paddles(width*48/50, height/10, width/50, height/5, color(255, 255, 255), 15, LEFT, RIGHT);

  println("exciting.... not exciting");
  //exit();
}
void draw() {
  background(0);
  pongBalls.draw();
  paddle1.draw();
  paddle2.draw();

  if ((pongBalls.x-(pongBalls.diameter/2)) <= (paddle1.x+paddle1.WIDTH)) {
      if ((pongBalls.y-(pongBalls.diameter/2)) >= paddle1.y) {
        if ((pongBalls.y+(pongBalls.diameter/2)) <= paddle1.y+paddle1.HEIGHT) {
          pongBalls.xSpeed = pongBalls.xSpeed*-1.1;
        }
      }
  }
    if ((pongBalls.x+(pongBalls.diameter/2)) >= (paddle2.x))
      if ((pongBalls.y-(pongBalls.diameter/2)) >= paddle2.y) {
        if ((pongBalls.y+(pongBalls.diameter/2)) <= paddle2.y+paddle2.HEIGHT) {
          pongBalls.xSpeed = pongBalls.xSpeed*-1.1;
        
      }
  }
  print(frameRate, " ");
}

void keyPressed() {
}
void mousePressed() {
}
