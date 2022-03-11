
float x = width/2, xspeed, y = height/2, yspeed = 5, xwidth = width/60;
float paddleY1 = 200, paddleY2 = 200;
float[] xSpeed = {-5, 5};
float[] yspeedsave =  new float[1], xspeedsave =  new float[1];
boolean player1cheat = false, player2cheat = false;
int score2 = 0, score1 = 0, senst = 15; 
int col = #D1D1D1, hover1 = col, hover2 = col, hover3 = col, hover4 = col, hover5 = col;
boolean pause = false, FullS = false;
void setup() {
  frameRate(100);
  surface.setResizable(true);
  size(1000, 500);
  background(255);
  yspeed = int(random(-4, 4));
  xspeed = xSpeed[int(random(-1, 2))];
  x = width/2;
  y = height/2;
  noSmooth();
}

void draw() {

  if (pause==false) {
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
      Sensitivity();
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
    stroke(#988585);
    paddleLeftdraw();
    paddleRightdraw();
    fill(#D05959);
    line(width/2, 0, width/2, height);
    ellipse(x, y, circlediameter, circlediameter);
    x = x + xspeed;
    y = y + yspeed;
    if (x-((width/60)/2) <= (width/20)+width/60) {
      if (y >= paddleY1 && y <= paddleY1+(height/5)) {
        xspeed = xspeed * -1;
        xspeed = xspeed+(0.001*(-(xspeed/(-xspeed))));
      }
    }
    if (x+((width/60)/2) >= 0.3) { 
      if (x+((width/60)/2) >= (width-(width/20))) {
        if (y >= paddleY2 && y <= paddleY2+(height/5)) {
          xspeed = xspeed * -1;
          xspeed = xspeed-(0.001*(-(xspeed/(-xspeed))));
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
    fill(255);
    text(int(frameRate), width/100, height/30);
  } else if (pause == true) {
    if (keyPressed) {  
      pause();
    }
    if (mousePressed) {

      if (mouseX > width*1.25/4 && mouseX < width*2.75/4) {
        if (mouseY > height*1.3/4 && mouseY < height*1.6/4) {
          score1 = 0; 
          score2 = 0; 
          setup();
          redraw();
          pause = false;
          player1cheat = false;
          player2cheat = false;
        }
      }
      if (mouseX > width*1.25/4 && mouseX < width*1.75/4) {
        if (mouseY > height*1.8/4 && mouseY < height*2.2/4) {
          senst = 15;
        }
      }
      if (mouseX > width*1.75/4 && mouseX < width*2.25/4) {
        if (mouseY > height*1.8/4 && mouseY < height*2.2/4) {
          senst = 30;
        }
      }
      if (mouseX > width*2.25/4 && mouseX < width*2.75/4) {
        if (mouseY > height*1.8/4 && mouseY < height*2.2/4) {
          senst = 50;
        }
      }
        if (mouseX > width*1.25/4 && mouseX < width*2.75/4) {
          if (mouseY > height*2.3/4 && mouseY < height*2.6/4) {
            player1cheat = true;
            player2cheat = true;
          }
        }
      
      
    }
    if (mouseX > width*1.25/4 && mouseX < width*2.75/4) {
      if (mouseY > height*1.3/4 && mouseY < height*1.6/4) {
        hover1 = #F5F5F5;
      }
    } else { 
      hover1 = col;
    }
    if (mouseX > width*1.25/4 && mouseX < width*1.75/4) {
      if (mouseY > height*1.8/4 && mouseY < height*2.2/4) {
        hover2 = #F5F5F5;
      }
    } else {
      hover2 = col;
    }
    if (mouseX > width*1.75/4 && mouseX < width*2.25/4) {
      if (mouseY > height*1.8/4 && mouseY < height*2.2/4) {
        hover3 = #F5F5F5;
      }
    } else {
      hover3 = col;
    }
    if (mouseX > width*2.25/4 && mouseX < width*2.75/4) {
      if (mouseY > height*1.8/4 && mouseY < height*2.2/4) {
        hover4 = #F5F5F5;
      }
    } else {
      hover4 = col;
    }
    if (mouseX > width*1.25/4 && mouseX < width*2.75/4) {
      if (mouseY > height*2.3/4 && mouseY < height*2.6/4) {
        hover5 = #F5F5F5;
      }
    } else { 
      hover5 = col;
    }


    fill(col);
    stroke(col);
    textSize(height*1/20);
    textAlign(CENTER);
    text("Pause", width*2/4, height/3.3);
    fill(195, 161, 161, 3);
    rect(width/4, height/4, width/2, height/2);
    fill(hover2);
    rect(width*1.25/4, height*1.8/4, width*0.49/4, height/12);
    fill(hover3);
    rect(width*1.75/4, height*1.8/4, width*0.49/4, height/12);
    fill(hover4);
    rect(width*2.25/4, height*1.8/4, width*0.49/4, height/12);
    fill(hover1);
    rect(width*1.25/4, height*1.30/4, width*1.5/4, height/12);
    fill(hover5);
    rect(width*1.25/4, height*2.30/4, width*1.5/4, height/12);
    fill(#000000);
    text("Reset", width*2/4, height*1.5/4);
    text("Default", width*1.5/4, height*2.05/4);
    text("Fast", width*2/4, height*2.05/4);
    text("Godly", width*2.5/4, height*2.05/4);
    text("Screensaver", width*2/4, height*2.5/4);

  }
}
