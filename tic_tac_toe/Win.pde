float winX,winY,winWidth,winHeight;
String WIN=" ";


void WinDraw() {
   if (XWon == true) {
     WIN = "X Has Won The Game";
   }
  if (OWon == true) {
     WIN = "O Has Won The Game";
   }
   winWidth=resetWidth;
   winHeight=resetHeight;
  winX=linex5/2 - winWidth/2;
   winY=displayHeight/2 - winHeight/2;
   
   text(WIN,winX,winY,winWidth,winHeight);
   noStroke();
   rect(winX,winY,winWidth,winHeight);
   stroke(1);
//

}
