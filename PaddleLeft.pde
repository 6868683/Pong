 void paddleLeft(){
   if(keyCode == DOWN && paddleY1+height/5 <= height){
   noLoop();
   paddleY1 = paddleY1 + height/70;
   loop();
 }
  if(keyCode == UP && paddleY1 >= 0){
   noLoop();
   paddleY1 = paddleY1 - height/70;
   loop();
  }
}

void paddleLeftdraw(){
   fill(175);
   rect(width/20, paddleY1, width/60, height/5);
}
