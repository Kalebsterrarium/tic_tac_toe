float X1, X2, X3, X4, X5, X6, X7, X8;
float lineWidth, lineHeight;
float Ox, Oy, ODiameter;
int squareNumber = 0;
// note: the diameter of the circle and X are 2/147 of the displayWidth
float X_X[] = new float[9];
float X_Y[] = new float[9];
float O_X[] = new float[9];
float O_Y[] = new float[9];
int counter[] = new int[0];
int squaresUsed = 0;
int savedX[] = new int[0];
int savedO[] = new int[0];
int Xcheck1=0, Xcheck2=0, Ocheck1=0, Ocheck2=0, check1, check2;
void X_and_ODraw() {
  lineWidth=(linex1 - linex5);
  lineHeight=(lineY5 - lineY1);
  //
  while ( squaresUsed>9) {
    squaresUsed--;
    //
  }





  ODiameter=lineHeight*5/7;
  //

  //
 // println(float(squaresUsed%2)-1);
  
  for ( int i_2=0; i_2 < savedX.length; i_2++) {


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

    //
    X3=X_X[savedX[i_2]] + (lineHeight*5/7);
    X4=X_Y[savedX[i_2]] - (lineHeight*5/7);
    X5=X_X[savedX[i_2]];
    X6=X4;
    X7=X3;
    X8=X_Y[savedX[i_2]];
    line(  X_X[savedX[i_2]], X_Y[savedX[i_2]], X3, X4);
    line(X5, X6, X7, X8);
  }

  //
  for ( int i_2=0; i_2 < savedO.length; i_2++) {
    O_X[0]=linex5+ (lineHeight*1/2);
    O_X[1]=linex1+ (lineHeight*1/2);
    O_X[2]=linex3+ (lineHeight*1/2);
    O_X[3]=linex5+ (lineHeight*1/2);
    O_X[4]=linex1+ (lineHeight*1/2);
    O_X[5]=linex3+ (lineHeight*1/2);
    O_X[6]=linex5+ (lineHeight*1/2);
    O_X[7]=linex1+ (lineHeight*1/2);
    O_X[8]=linex3+ (lineHeight*1/2);
    //
    O_Y[0] = lineY1 + (lineHeight*1/2);
    O_Y[1] = lineY1 + (lineHeight*1/2);
    O_Y[2] = lineY1 + (lineHeight*1/2);
    O_Y[3] = lineY5 + (lineHeight*1/2);
    O_Y[4] = lineY5 + (lineHeight*1/2);
    O_Y[5] = lineY5 + (lineHeight*1/2);
    O_Y[6] = lineY7 + (lineHeight*1/2);
    O_Y[7] = lineY7 + (lineHeight*1/2);
    O_Y[8] = lineY7 + (lineHeight*1/2);
    ellipse(O_X[savedO[i_2]], O_Y[savedO[i_2]], ODiameter, ODiameter);
  }
 

   
  
  //
  //  println ( savedO.length);
  // println( savedX.length);
 // printArray(savedX);
  //printArray(savedO);
  // println(squaresUsed);
}//end draw
//
void X_and_OMousePressed() {

  if (mouseX>linex5 && mouseX<linex5+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {
    squareNumber = 0;

    //println("egg");
  }
  if (mouseX>linex1 && mouseX<linex1+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {

    squareNumber =1;
  }
  if (mouseX>linex3 && mouseX<linex3+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {

    squareNumber =2;
  }
  if (mouseX>linex5 && mouseX<linex5+lineWidth && mouseY>lineY5 && mouseY<lineY5+lineHeight) {

    squareNumber =3;
  }
  if (mouseX>linex1 && mouseX<linex1+lineWidth && mouseY>lineY5 && mouseY<lineY5+lineHeight) {

    squareNumber =4;
  }
  if (mouseX>linex3 && mouseX<linex3+lineWidth && mouseY>lineY5 && mouseY<lineY5+lineHeight) {

    squareNumber=5;
  }
  if (mouseX>linex5 && mouseX<linex5+lineWidth && mouseY>lineY7 && mouseY<lineY7+lineHeight) {

    squareNumber=6;
  }
  if (mouseX>linex1 && mouseX<linex1+lineWidth && mouseY>lineY7 && mouseY<lineY7+lineHeight) {

    squareNumber=7;
  }
  if (mouseX>linex3 && mouseX<linex3+lineWidth && mouseY>lineY7 && mouseY<lineY7+lineHeight) {

    squareNumber=8;
  }

  if (mouseX>linex5 && mouseX<linex5+(lineWidth*3) && mouseY>lineY1 && mouseY<lineY1+(lineHeight*3)) {
   
    if (XWon == false && OWon == false) {
    if (squaresUsed<=9) {

      squaresUsed++;
      if ( OWon == false && XWon == false) {
        if ( (squaresUsed%2) > 0) {
          savedX= append(savedX, squareNumber);

          for (int Xcheck1 =0; Xcheck1 != savedX.length; Xcheck1++) {

            for (int Xcheck2=0; Xcheck2 != Xcheck1; Xcheck2++) {
              check1=0;
              if (Xcheck2 == ( Xcheck1) ) {
                check1=1;
              } else if (Xcheck2 == 0) {
                check1 =0;
              }
              if ((savedX.length - savedO.length) > 1) {
                println("squares used error");
              }
              if ( savedX[Xcheck1] == savedX[Xcheck2] || savedX[Xcheck1] == savedO[Xcheck2 -check1]) {
                savedX = shorten(savedX);
                println("pressed same square");
                squaresUsed--;
                Xcheck2--;
                Xcheck1--;
                println(squaresUsed);
              } else if ( savedX.length == 0) {

                savedX= append(savedX, squareNumber);
              }
            }
          }
        } else {

          savedO= append(savedO, squareNumber);
          if ( savedO[0] == savedX[0]) {
            savedO = shorten(savedO);
            squaresUsed--;
          }

          for (int Ocheck1 =0; Ocheck1 != savedO.length; Ocheck1++) {

            for (int Ocheck2=0; Ocheck2 != Ocheck1; Ocheck2++) {
              check2=0;
              if (Ocheck2 == Ocheck1 ) {
                check2=0;
              } else {
                check2 =1;
              }
              if ( savedO[Ocheck1] == savedO[Ocheck2] || savedO[Ocheck1] == savedX[Ocheck2 + check2] || savedO[Ocheck1] == savedX[Ocheck2]) {
                savedO = shorten(savedO);
                println("pressed same square");
                squaresUsed--;
                Ocheck2--;
                Ocheck1--;
                check2--;
              }
            }
          }
        }
      } 
      
    }
  }
  }
}//end mousepressed
