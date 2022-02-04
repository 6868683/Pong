float x = 100;
float y = 100;
float xspeed = 7;
float yspeed = 8;
float paddleY = 200;
boolean touchingpaddle = false;
void setup() {
  size(1000,500);
  background(255);
}

void draw() {
  noStroke();
  fill(255);
  rect(0,0,width,height);

  x = x + xspeed;
  y = y + yspeed;

  if ((x > width) || (x < 0)){
    xspeed = xspeed * -1;
  }
  if(x <= 20 && y <= paddleY && y >= paddleY-60){
   touchingpaddle = true;
  }else{
    touchingpaddle = false;
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }
  
  
 if(touchingpaddle == true){
   xspeed = 0;
   yspeed = 0;
 }
 if(keyPressed){if(keyCode == DOWN && paddleY+60 <= 500){
   noLoop();
   paddleY = paddleY + 2;
   loop();
 }
  if(keyCode == UP && paddleY >= 0){
   noLoop();
   paddleY = paddleY - 2;
   loop();
 }
 }
  stroke(0,255,0);
  rect(20, paddleY, 15, 60);


  fill(175);
  ellipse(x,y,16,16);
  print(paddleY);
}
