boolean HardAI = false, HAITurn = false,DumbMove=false;
float HAI_X,HAI_Y,HAI_Width,HAI_Height;
color HAI_Color = #FF0000;
int Random1[] = {0,2,6,8};
int Random2[] = {1,3,5,7};
int Random3[] = {0,2};
int Random4[] = {0,6};
int Random5[] = {0,8};
int Random6[] = {2,6};
int Random7[] = {2,8};
int Random8[] = {6,8};
int Random9[] = {3,5};
int Random10[] = {1,7};
void HardAIDraw() {
    HAI_X=RScoreX;
  HAI_Y=(lineY8 + ((lineHeight*3)/2)) + (EAI_Height*2);
  HAI_Width=RScoreWidth;
  HAI_Height=RScoreHeight;
   fill(HAI_Color);
  rect(HAI_X,HAI_Y,HAI_Width,HAI_Height);
  noFill();
  fill(#000000);
  text("Hard AI",HAI_X,HAI_Y,HAI_Width,HAI_Height);
  noFill();
  println(squaresUsed);
  if (mouseX> HAI_X && mouseX< HAI_X+HAI_Width && mouseY> HAI_Y && mouseY< HAI_Y+HAI_Height) {
    HAI_Color =  #AA0000;
  } else {
    HAI_Color = #FF0000;
  }
  if ( HardAI == true) {
    HAI_Color = #AA0000;
  }
  if ((squaresUsed%2) == 1 && HAITurn == true && OWon == false && XWon == false && HardAI == true) {
   
     sameSquare = false;
    println(squaresUsed%2);
HardAlgorithm();
 

          savedO= append(savedO, squareNumber);
          if ( savedO[0] == savedX[0]) {
            savedO = shorten(savedO);
            squaresUsed--;
            sameSquare = true;
          }

          for (int Ocheck1 =0; Ocheck1 != savedO.length; Ocheck1++) {

            for (int Ocheck2=0; Ocheck2 != Ocheck1; Ocheck2++) {
              check2=0;
              if (Ocheck2 == Ocheck1 ) {
                check2=0;
              } else   {
                check2 =1;
              }
              if ( savedO[Ocheck1] == savedO[Ocheck2] || savedO[Ocheck1] == savedX[Ocheck2 + check2] || savedO[Ocheck1] == savedX[Ocheck2]) {
                savedO = shorten(savedO);
                println("pressed same square");
                squaresUsed--;
                Ocheck2--;
                Ocheck1--;
                check2--;
                sameSquare = true;
              }
            }
          }
          
          if (sameSquare == false) {
          HAITurn = false;
          }
        }
}
//
void HardAIMousePressed() {
   if (mouseX> HAI_X && mouseX< HAI_X+HAI_Width && mouseY> HAI_Y && mouseY< HAI_Y+HAI_Height) {
     WIN = " ";
    squaresUsed = 0;
   
    for(int reset=0; reset != 9; reset++) {
      Xpos[reset]= false;
      Opos[reset]=false;
    }
   
    XWon=false;
    OWon=false;
     resetfix = true;
     
      while( savedX.length != 0) {
      savedX = shorten(savedX);
    }
   
     while( savedO.length != 0) {
      savedO = shorten(savedO);
    }
    if (HardAI == false) {
      EasyAI = false;
      MediumAI=false;
      HardAI=true;
    } else {
      HardAI = false;
    }
  }
  if (HardAI == true) {
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
          HAITurn = true;
        } 
      } 
      
    }
  }
  }
  }
}
