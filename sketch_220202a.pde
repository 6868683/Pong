float x = 100;
float y = 100;
float xspeed = 10;
float yspeed = 13;
boolean touchingpaddle = false;
void setup() {
  size(1000,1000);
  background(255);
}

void draw() {
  noStroke();
  fill(255,10);
  rect(0,0,width,height);

  x = x + xspeed;
  y = y + yspeed;

  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }
  if(mousePressed){
    touchingpaddle = true;
  }else{
    touchingpaddle = false;
  }
  stroke(0,255,0);
  rect(20, 200, 15, 60);


  fill(175);
  ellipse(x,y,16,16);
}
