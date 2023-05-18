float X1,X2,X3,X4,X5,X6,X7,X8;
float lineWidth,lineHeight;
float Ox,Oy,ODiameter;
int i =0, i_1 = 0;
// note: the diameter of the circle and X are 2/147 of the displayWidth 
float X_X[] = new float[3];
float X_Y[] = new float[3];
int savedX[] = new int[0];
int savedY[] = new int[0];
int squareAmount = 0;
int savedSquareNumber[] = new int[9];
int i_3;
int i_2;
int savedcheck=0,savedlist;
void X_and_ODraw() {
lineWidth=(linex1 - linex5);
lineHeight=(lineY5 - lineY1);

//
Ox=linex5+ (lineHeight*1/2);
Oy=lineY5 + (lineHeight*1/2);
ODiameter=lineHeight*5/7;
 //
  
 //

  for ( i_3=0 ; i_3<=8; i_3++) { 
    if ( savedSquareNumber[i_3] > 1) {
      savedSquareNumber[i_3]=1;
      i_3=9;
      println("clicked on a square twice");
    } else {
      println("clicked on a square once");
      println(i_3);
      if ( i_3 == 8 && savedX.length > 1 && savedY.length > 1 ) {
       
        
        for(i_2=0 ; i_2 < savedX.length && i_2 < savedY.length; i_2++) {
          //
X_X[0]=linex1 + (lineHeight*1/7);
X_X[1]=linex3 + (lineHeight*1/7);
X_X[2]=linex5 + (lineHeight*1/7);
//
X_Y[0]=lineY1 + (lineHeight*6/7);
X_Y[1]=lineY5 + (lineHeight*6/7);
X_Y[2]=lineY7 + (lineHeight*6/7);
//
 X1=X_X[savedX[i_2]];
 X2=X_Y[savedY[i_2]];
 X3=X1 + (lineHeight*5/7);
 X4=X2 - (lineHeight*5/7);
 X5=X1;
 X6=X4;
 X7=X3;
 X8=X2;
//
          line( X_X[savedX[i_2]],X_Y[savedY[i_2]],X3,X4);
          line(X5,X6,X7,X8);
        }
        
      }
    }
    
    
  }
//



ellipse(Ox,Oy,ODiameter,ODiameter);
ellipse(Ox,Oy,ODiameter,ODiameter);




}//end draw
//
void X_and_OMousePressed() {
 squareAmount++;

   if (mouseX>linex5 && mouseX<linex5+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {
    i=2;
    i_1=0;
    savedSquareNumber[0]++;
  }
  if (mouseX>linex1 && mouseX<linex1+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {
    i=0;
    i_1=0;
     savedSquareNumber[1]++;
  }
  if (mouseX>linex3 && mouseX<linex3+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {
   i=1;
   i_1=0;
    savedSquareNumber[2]++;
  }
  if (mouseX>linex5 && mouseX<linex5+lineWidth && mouseY>lineY5 && mouseY<lineY5+lineHeight) {
   i=2;
   i_1=1;
    savedSquareNumber[3]++;
  }
  if (mouseX>linex1 && mouseX<linex1+lineWidth && mouseY>lineY5 && mouseY<lineY5+lineHeight) {
   i=0;
    i_1=1;
     savedSquareNumber[4]++;
  }
  if (mouseX>linex3 && mouseX<linex3+lineWidth && mouseY>lineY5 && mouseY<lineY5+lineHeight) {
    i=1;
     i_1=1;
      savedSquareNumber[5]++;
  }
  if (mouseX>linex5 && mouseX<linex5+lineWidth && mouseY>lineY7 && mouseY<lineY7+lineHeight) {
   i=2;
    i_1=2;
     savedSquareNumber[6]++;
  }
  if (mouseX>linex1 && mouseX<linex1+lineWidth && mouseY>lineY7 && mouseY<lineY7+lineHeight) {
   i=0;
   i_1=2;
    savedSquareNumber[7]++;
  }
  if (mouseX>linex3 && mouseX<linex3+lineWidth && mouseY>lineY7 && mouseY<lineY7+lineHeight) {
   i=1;
   i_1=2;
    savedSquareNumber[8]++;
  }
  if ( savedX.length <= 1 && savedY.length <= 1){ 
  savedY = append(savedY,i_1);
  savedX = append(savedX,i); 
    
  }
  savedlist=0;
  while (savedlist != savedX.length &&  savedlist != savedY.length) {
     savedcheck = 0;
  while ( savedcheck != savedX.length &&  savedcheck != savedY.length) {
    if ( savedY[savedcheck] == savedY[savedlist]  && savedX[savedcheck]== savedX[savedlist] ) {
  savedY = shorten(savedY);
   savedX = shorten(savedX);
    } else {
      savedY = append(savedY,i_1);
  savedX = append(savedX,i);
  savedcheck++;
    }
  }
  savedlist++;
  }
}//end mousepressed
