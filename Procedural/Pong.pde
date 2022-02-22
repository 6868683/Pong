float x = width/2, xspeed = width/90, y = height/2, yspeed = 5, xwidth = width/60, reboundSpeed = width/90;
float paddleY1 = 200, paddleY2 = 200;
float[] xSpeed = {-(width/90), (width/90)};
float[] yspeedsave =  new float[1], xspeedsave =  new float[1];
boolean player1cheat = false, player2cheat = false;
int score2 = 0, score1 = 0; 
boolean pause = false, FullS = false;
void setup() {
  frameRate(80);
  surface.setResizable(true);
  size(1000, 500);
  background(255);
  yspeed = int(random(-4, 4));
  xspeed = xSpeed[int(random(-1, 2))];
  x = width/2;
  y = height/2;
  noSmooth();
  surface.hideCursor();
}

void draw() {
  float circlediameter = width/60;
  if (pause == false) {
    yspeedsave = append(yspeedsave, yspeed);
  }
  if (pause == false) {
    xspeedsave = append(xspeedsave, xspeed);
  }
  while (yspeed >=0 && yspeed <= 0.5 && yspeed <= -0.5) {
    yspeed = random(-1, 1);
  }
  if (keyPressed) {
    FullScreen();
    pause();
    paddleRight();
    paddleLeft();
    if ((key == 'C' || key == 'c') && player1cheat == false) {
      player1cheat = true;
    }

    if ((key == 'V' || key == 'v') && player2cheat == false) {
      player2cheat = true;
    }
  }
  if (player1cheat == true) {
    paddleY1= y-(height/10);
  }
  if (player2cheat == true) {
    paddleY2= y-(height/10);
  }
  noStroke();
  fill(0);
  rect(0, 0, width, height);
  stroke(255, 153, 0);
  paddleLeftdraw();
  paddleRightdraw();
  fill(255, 0, 0);
  line(width/2, 0, width/2, height);
  ellipse(x, y, circlediameter, circlediameter);
  x = x + xspeed;
  y = y + yspeed;
  if (x-((width/60)/2) <= (width/20)+width/60) {
    if (y >= paddleY1 && y <= paddleY1+(height/5)) {
      xspeed = xspeed * -1;
      xspeed = xspeed+(1*(-(xspeed/(-xspeed))));
    }
  }
  if (x+((width/60)/2) >= 0.3) { 
    if (x+((width/60)/2) >= (width-(width/20))) {
      if (y >= paddleY2 && y <= paddleY2+(height/5)) {
        xspeed = xspeed * -1;
        xspeed = xspeed-(1*(-(xspeed/(-xspeed))));
      }
    }
  }

  if ((x+((width/60)/2) > width) || (x-((width/60)/2) > width) || (x+((width/60)/2) < 0) || (x-((width/60)/2) < 0) ) {
    xspeed = xspeed * -1;
  }

  if ((y+((width/60)/2) > height) || (y-((width/60)/2) > height) || (y+((width/60)/2) < 0) || (y-((width/60)/2) < 0) ) {
    yspeed = yspeed * -1;
  }
  textSize(height/30);
  text(score2, width*1/4, height/30);
  text(score1, width*3/4, height/30);
  if (x-((width/60)/2) <= 0.3) {
    x = width/2;
    y = height/2;
    score1 = score1+1;
  }
  if (x+((width/50)/2) >= (width-0.3)) {
    x = width/2;
    y = height/2;
    score2 = score2+1;
  }
  print(yspeedsave[yspeedsave.length-1]);
}
