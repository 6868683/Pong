float x = 100;
float y = 100;
float xspeed = 1;
float yspeed = 2;
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
  if(x == 35 || x == 20 && (y <= paddleY && y >= paddleY+60)){
   touchingpaddle = true;
  }else{
    touchingpaddle = false;
  }
  x = x + xspeed;
  y = y + yspeed;

  if ((x > width) || (x < 0) || touchingpaddle == true){
    xspeed = xspeed * -1;
  }

  if ((y > height) || (y < 0) || touchingpaddle == true) {
    yspeed = yspeed * -1;
  }
  
  
 
 if(keyPressed){if(keyCode == DOWN && paddleY+60 <= 500){
   noLoop();
   paddleY = paddleY + 5;
   loop();
 }
  if(keyCode == UP && paddleY >= 0){
   noLoop();
   paddleY = paddleY - 5;
   loop();
 }
   if(keyCode == RIGHT ){
   noLoop();
   xspeed = xspeed + 1;
   yspeed = yspeed + 1;
   loop();
 }
 }
  stroke(0,255,0);
  rect(20, paddleY, 15, 60);


  fill(175);
  ellipse(x,y,16,16);
  if(touchingpaddle == true){
    print(touchingpaddle);
  }
}
