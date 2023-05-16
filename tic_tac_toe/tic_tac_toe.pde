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
  linex1=displayWidth*3/7;
  lineY1=displayHeight*2/7;
  linex2=linex1;
  lineY2=lineY1 + linex1;
  linex3=displayWidth*4/7;
  lineY3=displayHeight*2/7;
  linex4=displayWidth*4/7;
  lineY4=displayHeight*5/7;
 linex5=displayWidth*2/7;
  lineY5=displayHeight*3/7;
  linex6=displayWidth*5/7;
  lineY6=displayHeight*3/7;
  linex7=displayWidth*2/7;
  lineY7=displayHeight*4/7;
  linex8=displayWidth*5/7;
  lineY8=displayHeight*4/7; 
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
println(lineY2);
}


void mousePressed() {
 
X_and_OMousePressed();
}



void keyPressed() {


} 
