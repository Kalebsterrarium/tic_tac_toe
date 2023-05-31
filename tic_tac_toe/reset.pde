float resetX,resetY, resetWidth,resetHeight;
PFont font;
boolean resetfix =false;
void SetupText() {
fill(#000000);
 
textAlign(CENTER,CENTER);
font = createFont("Microsoft-Yi-Baiti",10);
textFont(font,displayHeight);

}
//
void reset() {
resetY=displayHeight/14;
resetWidth=displayWidth/7;
resetHeight=displayHeight/7;
resetX=(displayWidth*1/2) - (resetWidth/2);
SetupText();
textSize(40);

  text("Restart Game",resetX,resetY, resetWidth,resetHeight);

   noFill();
  strokeWeight(11);
  rect( resetX,resetY, resetWidth,resetHeight);
  
  
  
}
//
void resetMouseClicked() {
  if (mouseX>resetX && mouseX<resetX+resetWidth && mouseY>resetY && mouseY<resetY+resetHeight) {
    
    squaresUsed = 0;
    for ( int Xreset=0; Xreset != savedX.length; Xreset++) {
    savedX[Xreset]=10;
    printArray(savedX);
  }
   for ( int Oreset=0; Oreset != savedO.length; Oreset++) {
    savedO[Oreset]=10;
  }
   
    for(int reset=0; reset != 8; reset++) {
      Xpos[reset]= false;
      Opos[reset]=false;
    }
    XWon=false;
    OWon=false;
     resetfix = true;
  }
 
}
