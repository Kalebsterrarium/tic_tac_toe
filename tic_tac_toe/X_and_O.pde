float X1,X2,X3,X4,X5,X6,X7,X8;
float lineWidth,lineHeight;
float Ox,Oy,ODiameter;
int i =0, i_1 = 0;
// note: the diameter of the circle and X are 2/147 of the displayWidth 
float X_X[] = new float[3];
float X_Y[] = new float[3];
int counter[] = new int[0];
int squareNumber[] = new int[9];
void X_and_ODraw() {
lineWidth=(linex1 - linex5);
lineHeight=(lineY5 - lineY1);
//
X_X[0]=linex1 + (lineHeight*1/7);
X_X[1]=linex3 + (lineHeight*1/7);
X_X[2]=linex5 + (lineHeight*1/7);
//
X_Y[0]=lineY1 + (lineHeight*6/7);
X_Y[1]=lineY5 + (lineHeight*6/7);
X_Y[2]=lineY7 + (lineHeight*6/7);
//
 X1=X_X[i];
 X2=X_Y[i_1];
 X3=X1 + (lineHeight*5/7);
 X4=X2 - (lineHeight*5/7);
 X5=X1;
 X6=X4;
 X7=X3;
 X8=X2;
//
Ox=linex5+ (lineHeight*1/2);
Oy=lineY5 + (lineHeight*1/2);
ODiameter=lineHeight*5/7;
 





ellipse(Ox,Oy,ODiameter,ODiameter);
ellipse(Ox,Oy,ODiameter,ODiameter);




}//end draw
//
void X_and_OMousePressed() {
 for(int i_2=0; i_2<counter.length; i_2++) {
  
  line( X_X[i_2],X_Y[i_2],X3,X4);
 line(X5,X6,X7,X8);
}
counter = append(counter,0);
   if (mouseX>linex5 && mouseX<linex5+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {
    i=2;
    i_1=0;
  }
  if (mouseX>linex1 && mouseX<linex1+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {
    i=0;
    i_1=0;
  }
  if (mouseX>linex3 && mouseX<linex3+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {
   i=1;
   i_1=0;
  }
  if (mouseX>linex5 && mouseX<linex5+lineWidth && mouseY>lineY5 && mouseY<lineY5+lineHeight) {
   i=2;
   i_1=1;
  }
  if (mouseX>linex1 && mouseX<linex1+lineWidth && mouseY>lineY5 && mouseY<lineY5+lineHeight) {
   i=0;
    i_1=1;
  }
  if (mouseX>linex3 && mouseX<linex3+lineWidth && mouseY>lineY5 && mouseY<lineY5+lineHeight) {
    i=1;
     i_1=1;
  }
  if (mouseX>linex5 && mouseX<linex5+lineWidth && mouseY>lineY7 && mouseY<lineY7+lineHeight) {
   i=2;
    i_1=2;
  }
  if (mouseX>linex1 && mouseX<linex1+lineWidth && mouseY>lineY7 && mouseY<lineY7+lineHeight) {
   i=0;
   i_1=2;
  }
  if (mouseX>linex3 && mouseX<linex3+lineWidth && mouseY>lineY7 && mouseY<lineY7+lineHeight) {
   i=1;
   i_1=2;
  }
  
}//end mousepressed
