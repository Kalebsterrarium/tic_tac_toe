float X1, X2, X3, X4, X5, X6, X7, X8;
float lineWidth, lineHeight;
float Ox, Oy, ODiameter;
int squareNumber = 0;
// note: the diameter of the circle and X are 2/147 of the displayWidth
float X_X[] = new float[9];
float X_Y[] = new float[9];
int counter[] = new int[0];
int squaresUsed = 0;
int saved[] = new int[0];

int Xcheck1=0, Xcheck2=0;
void X_and_ODraw() {
  lineWidth=(linex1 - linex5);
  lineHeight=(lineY5 - lineY1);
  //

  //
  Ox=linex5+ (lineHeight*1/2);
  Oy=lineY5 + (lineHeight*1/2);
  ODiameter=lineHeight*5/7;
  //
 
    for ( int i_2=0; i_2 < squaresUsed; i_2++) {
      X_X[0]=linex5 + (lineHeight*1/7);
      X_X[1]=linex1 + (lineHeight*1/7);
      X_X[2]=linex3 + (lineHeight*1/7);
      X_X[3]=linex5 + (lineHeight*1/7);
      X_X[4]=linex1 + (lineHeight*1/7);
      X_X[5]=linex3 + (lineHeight*1/7);
      X_X[6]=linex5 + (lineHeight*1/7);
      X_X[7]=linex1 + (lineHeight*1/7);
      X_X[8]=linex3 + (lineHeight*1/7);
      //
      X_Y[0]=lineY1 + (lineHeight*6/7);
      X_Y[1]=lineY1 + (lineHeight*6/7);
      X_Y[2]=lineY1 + (lineHeight*6/7);
      X_Y[3]=lineY5 + (lineHeight*6/7);
      X_Y[4]=lineY5 + (lineHeight*6/7);
      X_Y[5]=lineY5 + (lineHeight*6/7);
      X_Y[6]=lineY7 + (lineHeight*6/7);
      X_Y[7]=lineY7 + (lineHeight*6/7);
      X_Y[8]=lineY7 + (lineHeight*6/7);
      //
     
      
      X3=X_X[saved[i_2]] + (lineHeight*5/7);
      X4=X_Y[saved[i_2]] - (lineHeight*5/7);
      X5=X_X[saved[i_2]];
      X6=X4;
      X7=X3;
      X8=X_Y[saved[i_2]];
      line(  X_X[saved[i_2]], X_Y[saved[i_2]], X3, X4);
      line(X5, X6, X7, X8);
    }
  
  //


  ellipse(Ox, Oy, ODiameter, ODiameter);
  ellipse(Ox, Oy, ODiameter, ODiameter);
  //
  if ( squaresUsed>9) {
    squaresUsed = 0;
  }
}//end draw
//
void X_and_OMousePressed() {

  if (mouseX>linex5 && mouseX<linex5+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {
   squareNumber = 0;
    squaresUsed++;
    println("egg");
  }
  if (mouseX>linex1 && mouseX<linex1+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {
     
     squareNumber =1;
    squaresUsed++;
  }
  if (mouseX>linex3 && mouseX<linex3+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {
    
     squareNumber =2;
    squaresUsed++;
  }
  if (mouseX>linex5 && mouseX<linex5+lineWidth && mouseY>lineY5 && mouseY<lineY5+lineHeight) {
    
     squareNumber =3;
    squaresUsed++;
  }
  if (mouseX>linex1 && mouseX<linex1+lineWidth && mouseY>lineY5 && mouseY<lineY5+lineHeight) {
     
     squareNumber =4;
    squaresUsed++;
  }
  if (mouseX>linex3 && mouseX<linex3+lineWidth && mouseY>lineY5 && mouseY<lineY5+lineHeight) {
    
     squareNumber=5;
    squaresUsed++;
  }
  if (mouseX>linex5 && mouseX<linex5+lineWidth && mouseY>lineY7 && mouseY<lineY7+lineHeight) {
    
     squareNumber=6;
    squaresUsed++;
  }
  if (mouseX>linex1 && mouseX<linex1+lineWidth && mouseY>lineY7 && mouseY<lineY7+lineHeight) {
     
     squareNumber=7;
    squaresUsed++;
  }
  if (mouseX>linex3 && mouseX<linex3+lineWidth && mouseY>lineY7 && mouseY<lineY7+lineHeight) {
    
     squareNumber=8;
    squaresUsed++;
  }
 
    saved= append(saved, squareNumber);
    
  
 for (int Xcheck1 =0; Xcheck1 != saved.length; Xcheck1++) {
   
   for (int Xcheck2=0; Xcheck2 != Xcheck1; Xcheck2++) {
     if ( saved[Xcheck1] == saved[Xcheck2]) {
      saved = shorten(saved);
   println("pressed same square");
   squaresUsed--;
   Xcheck2--;
   Xcheck1--;
   println(squaresUsed);
     } else if ( saved.length == 0){
       
       saved= append(saved, squareNumber);
       
     }
   }
   
   
   
   
 }



  
}//end mousepressed
