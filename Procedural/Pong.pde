float x = 100;
float y = 100;
float xspeed = 5;
float yspeed = 5;
float paddleY1 = 200, paddleY2 = 200;
boolean touchingpaddle = false;
int score2 = 0, score1 = 0; 
void setup() {
  size(displayWidth, displayHeight);
  background(255);
}

void draw() {
   if(keyPressed){
     paddleLeft();
     pause();
     paddleRight();
   }
   noStroke();
  fill(255);
  rect(0,0,width,height);
     fill(175);
     paddleLeftdraw();
     paddleRightdraw();
      ellipse(x,y,width/60, height/30);
       x = x + xspeed;
  y = y + yspeed;
  if(x-((width/60)/2) <= (width/20)+width/60){
    if(y >= paddleY1 && y <= paddleY1+(height/5)){
    xspeed = xspeed * -1;
    xspeed = xspeed+(0.5*(-(xspeed/(-xspeed))));
    }
     if(x+((width/60)/2) <= (width-(width/20))-width/60){
    if(y >= paddleY2 && y <= paddleY2+(height/5)){
    xspeed = xspeed * -1;
    xspeed = xspeed+(0.5*(-(xspeed/(-xspeed))));
    }
}
stroke(255);
line(width/2, 0, width/2, height);

  if ((x+((width/60)/2) > width) || (x-((width/60)/2) > width) || (x+((width/60)/2) < 0) || (x-((width/60)/2) < 0) ){
    xspeed = xspeed * -1;
  }

  if ((y+((width/60)/2) > height) || (y-((width/60)/2) > height) || (y+((width/60)/2) < 0) || (y-((width/60)/2) < 0) ) {
    yspeed = yspeed * -1;
  }
   textSize(height/30);
   text(score2, width*1/4, height/30);
   text(score1, width*3/4, height/30);

  if (x-((width/60)/2) <= 0.3){
    x = width/2;
    y = height/2;
    score2 = score2+1;
  }
  if (x+((width/50)/2) >= (width-0.3)){
    x = width/2;
    y = height/2;
    score1 = score1+1;
  }
  print(xspeed," ");
}
