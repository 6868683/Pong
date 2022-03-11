void paddleRight() {
  if (pause == false) {
    if (keyCode == LEFT && paddleY2+height/5 <= height) {
      noLoop();
      paddleY2 = paddleY2 + senst;
      loop();
    }
    if (keyCode == RIGHT && paddleY2 >= 0) {
      noLoop();
      paddleY2 = paddleY2 - senst;
      loop();
    }
  }
}
void paddleRightdraw() {
  fill(175);
  rect(width-(width/20), paddleY2, width/60, height/5);
}
