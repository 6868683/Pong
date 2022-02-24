void FullScreen() { 
  if (key == 'F'||key == 'f') {
    if (FullS == false) {
      FullS =true;
      surface.setLocation(-(displayWidth/75), -(displayHeight/23));
      surface.setSize(displayWidth+(displayWidth/100), displayHeight-(displayHeight/22));
      redraw();
    } else {
      FullS = false;
      surface.setResizable(true);
    }
  }
}
