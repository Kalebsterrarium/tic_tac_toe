float resetX,resetY, resetWidth,resetHeight;
PFont font;
boolean resetfix =false;
void SetupText() {
fill(#000000);
 
textAlign(CENTER,CENTER);
font = createFont("Century Gothic",10);
textFont(font,displayHeight);

}
//
void reset() {
resetY=displayHeight/14;
resetWidth=displayWidth/7;
resetHeight=displayHeight/7;
resetX=(displayWidth*1/2) - (resetWidth/2);
SetupText();
textSize(38);

  text("Restart Game",resetX,resetY, resetWidth,resetHeight);

   noFill();
  strokeWeight(11);
  rect( resetX,resetY, resetWidth,resetHeight);
  
  
  
}
//
void resetMouseClicked() {
  if (mouseX>resetX && mouseX<resetX+resetWidth && mouseY>resetY && mouseY<resetY+resetHeight) {
    WIN = " ";
    squaresUsed = 0;
   
    for(int reset=0; reset != 9; reset++) {
      Xpos[reset]= false;
      Opos[reset]=false;
    }
   
    XWon=false;
    OWon=false;
     resetfix = true;
     
      while( savedX.length != 0) {
      savedX = shorten(savedX);
    }
   
     while( savedO.length != 0) {
      savedO = shorten(savedO);
    }
  }
 
}
