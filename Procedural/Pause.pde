void pause() {
  if (keyCode == SHIFT) {
    delay(500);
    if (pause == false) {
      yspeed = 0;
      xspeed = 0;
      pause =true;
    } else {
      yspeed = yspeedsave[yspeedsave.length-1]; 
      pause = false;
      xspeed = xspeedsave[xspeedsave.length-1];
    }
  }
}
