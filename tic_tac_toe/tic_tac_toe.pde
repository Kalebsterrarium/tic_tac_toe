//main program
//
//global variables 
float backGroundX ,backGroundY,backGroundWidth, backGroundHeight;
 float linex1,lineY1,linex2,lineY2,linex3,lineY3,linex4,lineY4,linex5,lineY5,linex6,lineY6,linex7,lineY7,linex8,lineY8;
 
//

void setup() {
fullScreen();

} 



void draw() {
  linex1=displayHeight*3/7 +( displayWidth*1/2 - displayHeight*1/2);
  lineY1=displayHeight*2/7;
  linex2=displayHeight*3/7+( displayWidth*1/2 - displayHeight*1/2);
  lineY2=displayHeight*5/7;
  linex3=displayHeight*4/7+( displayWidth*1/2 - displayHeight*1/2);
  lineY3=displayHeight*2/7;
  linex4=displayHeight*4/7+( displayWidth*1/2 - displayHeight*1/2);
  lineY4=displayHeight*5/7;
 linex5=displayHeight*2/7+( displayWidth*1/2 - displayHeight*1/2);
  lineY5=displayHeight*3/7;
  linex6=displayHeight*5/7+( displayWidth*1/2 - displayHeight*1/2);
  lineY6=displayHeight*3/7;
  linex7=displayHeight*2/7+( displayWidth*1/2 - displayHeight*1/2);
  lineY7=displayHeight*4/7;
  linex8=displayHeight*5/7+( displayWidth*1/2 - displayHeight*1/2);
  lineY8=displayHeight*4/7; 
  //
 
  //
backGroundX=0;
 backGroundY =0;
 backGroundWidth =displayWidth;
backGroundHeight=displayHeight;
rect( backGroundX ,backGroundY, backGroundWidth, backGroundHeight); 
line(linex1,lineY1,linex2,lineY2);
line(linex3,lineY3,linex4,lineY4);
line(linex5,lineY5,linex6,lineY6);
line(linex7,lineY7,linex8,lineY8);

X_and_ODraw();
 println(Opos[0]);
 println(Opos[1]);
 println(Opos[2]);
 println(Opos[3]);
 println(Opos[4]);
 println(Opos[5]);
 println(Opos[6]);
 println(Opos[7]);
 println(Opos[8]);
 if ( OWon == true) {
   println("O has won the game");
 }
  if ( XWon == true) {
   println("X has won the game");
 }
}


void mousePressed() {
 
X_and_OMousePressed();
ThreeInARow();
}



void keyPressed() {


} 
