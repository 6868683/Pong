boolean touchingPaddle, pause = false;
Balls pongBalls;
Paddles paddle1;

void setup() {
      surface.setResizable(true);

  frameRate(120);
  size(1000, 500);
  pongBalls = new Balls(width/2, height/2, int(width*1/40), color(255,255,255));
  paddle1  = new Paddles(width/50, height/10, width/40, height/5, color(255, 255, 255), 15, DOWN, UP);
  println("exciting.... not exciting");
  //exit();
}
void draw() {
  background(0);
  pongBalls.draw();
  paddle1.draw();
print(frameRate, " ");
}

void keyPressed() {
}
void mousePressed() {
}
