boolean touchingPaddle;
Balls pongBalls;


void setup() {
      surface.setResizable(true);

  frameRate(120);
  size(1000, 500);
  pongBalls = new Balls(width/2, height/2, int(width*1/40), color(random(0, 255), random(0, 255), random(0, 255)));
  println("exciting.... not exciting");
  //exit();
}
void draw() {
  background(255);
  pongBalls.draw();
print(frameRate, " ");
}

void keyPressed() {
}
void mousePressed() {
}
