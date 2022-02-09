void paddleRight(){
    loop();
   if(keyCode == LEFT && paddleY2+height/5 <= height){
   noLoop();
   paddleY2 = paddleY2 + height/70;
   loop();
 }
  if(keyCode == RIGHT && paddleY2 >= 0){
   noLoop();
   paddleY2 = paddleY2 - height/70;
   loop();
  }
}
void paddleRightdraw(){
   fill(175);
   rect(width-(width/20), paddleY2, width/60, height/5);
}
