Balls myBalls;
Balls yourBalls;


void setup() {
  size(1000, 500);
  myBalls = new Balls(random(50, 950), random(50, 450), int(random(30, 100)), color(random(0, 255), random(0, 255), random(0, 255)));
  yourBalls = new Balls(random(50, 950), random(50, 450), int(random(30, 100)), color(random(0, 255), random(0, 255), random(0, 255)));
  println("exciting.... not exciting");
  //exit();
}
void draw() {
  background(255);
  myBalls.draw();
  yourBalls.draw();
}

void keyPressed() {
}
void mousePressed() {
}
