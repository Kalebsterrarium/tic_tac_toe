float turnX, turnY, turnWidth, turnHeight;
String Turn="", XScore="0", OScore="0" , XText="X's Score",OText="O's Score",RScore = "Reset Score";
int Xcounter=0, Ocounter=0;
float XScoreX, XScoreY, XScoreWidth, XScoreHeight,
  OScoreX, OScoreY, OScoreWidth, OScoreHeight;
  float  RScoreX, RScoreY, RScoreWidth, RScoreHeight;
//
void scoreboard() {
  XScoreX=resetX - resetWidth;
  XScoreY=resetY;
  XScoreWidth=resetWidth;
  XScoreHeight=resetHeight;
  OScoreX=resetX + resetWidth;
  OScoreY=resetY;
  OScoreWidth=resetWidth;
  OScoreHeight=resetHeight;
  XScore = str(Xcounter);
  OScore = str(Ocounter);
  text(XScore, XScoreX, XScoreY, XScoreWidth, XScoreHeight);
  text(OScore, OScoreX, OScoreY, OScoreWidth, OScoreHeight);
  textAlign(CENTER,BOTTOM);
  text(XText, XScoreX, XScoreY, XScoreWidth, XScoreHeight);
  text(OText, OScoreX, OScoreY, OScoreWidth, OScoreHeight);
  textAlign(CENTER,CENTER);
}
void resetScoreDraw() {
  RScoreX=resetX;
  RScoreY=0;
  RScoreWidth=resetWidth;
  RScoreHeight=resetY;
  text(RScore,RScoreX, RScoreY, RScoreWidth, RScoreHeight);
  rect(RScoreX, RScoreY, RScoreWidth, RScoreHeight);
  
}

void resetScoreMousePressed() {
   if (mouseX>RScoreX && mouseX<RScoreX+RScoreWidth && mouseY>RScoreY && mouseY<RScoreY+RScoreHeight) {
     Xcounter = 0;
     Ocounter= 0;
   }
}

void turn() {
  if ( (squaresUsed%2) == 0 && XWon == false && OWon == false) {
    Turn = "X's Turn";
  }
  if ( (squaresUsed%2) == 1 && XWon == false && OWon == false) {
    Turn = "O's Turn";
  }
  if (XWon == true || OWon == true) {
    Turn = "Game Over";
  }
  turnY=winY;
  turnWidth=winWidth;
  turnHeight=winHeight;
  turnX=(linex3 + lineWidth) + (linex5/2) - turnWidth/2;
  text(Turn, turnX, turnY, turnWidth, turnHeight);
}
