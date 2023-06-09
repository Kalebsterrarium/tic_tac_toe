boolean EasyAI = false , EAITurn = false, sameSquare = false;
float EAI_X,EAI_Y,EAI_Width,EAI_Height;
color EAI_Color;
void EasyAIDraw() {
  EAI_X=RScoreX;
  EAI_Y=(lineY8 + ((lineHeight*3)/2));
  EAI_Width=RScoreWidth;
  EAI_Height=RScoreHeight;
  
  fill(EAI_Color);
  rect(EAI_X,EAI_Y,EAI_Width,EAI_Height);
  noFill();
  fill(#000000);
  text("Easy AI",EAI_X,EAI_Y,EAI_Width,EAI_Height);
  noFill();
  if (mouseX> EAI_X && mouseX< EAI_X+EAI_Width && mouseY> EAI_Y && mouseY< EAI_Y+EAI_Height) {
    EAI_Color =  #00AA00;
  } else {
    EAI_Color = #00FF00;
  }
  if ( EasyAI == true) {
    EAI_Color = #00AA00;
  }
 
  if ((squaresUsed%2) == 1 && EAITurn == true && OWon == false && XWon == false && EasyAI == true) {
     sameSquare = false;
    println(squaresUsed%2);
squareNumber = int(random(0,8));
 squaresUsed++;

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
          EAITurn = false;
          }
        }
  
  
  
  
  
}

void EasyAIMousePressed() {
  
  
  
  if (mouseX> EAI_X && mouseX< EAI_X+EAI_Width && mouseY> EAI_Y && mouseY< EAI_Y+EAI_Height) {
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
    if (EasyAI == false) {
      EasyAI = true;
      MediumAI=false;
      HardAI=false;
    } else {
      EasyAI = false;
    }
  }
  if (EasyAI == true) {
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
          EAITurn = true;
        } 
      } 
      
    }
  }
  }
  }
}
