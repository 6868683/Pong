float x = 100;
float y = 100;
float xspeed = 5;
float yspeed = 5;
float paddleY = 200;
boolean touchingpaddle = false;
int score2 = 0;
void setup() {
  size(1000,500);
  background(255);
}

void draw() {
 if(keyPressed){if(keyCode == DOWN && paddleY+100 <= 500){
   noLoop();
   paddleY = paddleY + 10;
   loop();
 }
  if(keyCode == UP && paddleY >= 0){
   noLoop();
   paddleY = paddleY - 10;
   loop();
  }
 }
   noStroke();
  fill(255);
  rect(0,0,width,height);
     fill(175);
      rect(20, paddleY, 15, 100);
      ellipse(x,y,width/40, height/20);
       x = x + xspeed;
  y = y + yspeed;
  if(x-((width/40)/2) <= 35){
    if(y >= paddleY && y <= paddleY+100){
    xspeed = xspeed * -1;
    yspeed = yspeed * -1;
    xspeed = xspeed+0.5;
    yspeed = yspeed+0.5;
    }
}

  if ((x+((width/40)/2) > width) || (x-((width/40)/2) > width) || (x+((width/40)/2) < 0) || (x-((width/40)/2) < 0) ){
    xspeed = xspeed * -1;
  }

  if ((y+((width/40)/2) > height) || (y-((width/40)/2) > height) || (y+((width/40)/2) < 0) || (y-((width/40)/2) < 0) ) {
    yspeed = yspeed * -1;
  }

   text(score2, 900, 40);
    print(x-((width/40)/2));
  if (x-((width/40)/2) <= 0.3){
    x = 500;
    y = 250;
    score2 = score2+1;
  }
}
