//main program
//
//global variables 
float backGroundX ,backGroundY,backGroundWidth, backGroundHeight;
 float linex1,lineY1,linex2,lineY2,linex3,lineY3,linex4,lineY4,linex5,lineY5,linex6,lineY6,linex7,lineY7,linex8,lineY8;
 
//

void setup() {
fullScreen();
savedSquareNumber[0]=0;
savedSquareNumber[1]=0;
savedSquareNumber[2]=0;
savedSquareNumber[3]=0;
savedSquareNumber[4]=0;
savedSquareNumber[5]=0; 
savedSquareNumber[6]=0;  
savedSquareNumber[7]=0;
savedSquareNumber[8]=0;
//
X_X[0]=linex1 + (lineHeight*1/7);
X_X[1]=linex3 + (lineHeight*1/7);
X_X[2]=linex5 + (lineHeight*1/7);
//
X_Y[0]=lineY1 + (lineHeight*6/7);
X_Y[1]=lineY5 + (lineHeight*6/7);
X_Y[2]=lineY7 + (lineHeight*6/7);


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

}


void mousePressed() {
 
X_and_OMousePressed();
}



void keyPressed() {


} 
