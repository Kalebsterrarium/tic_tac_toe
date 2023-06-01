boolean EasyAI = false;
float EAI_X,EAI_Y,EAI_Width,EAI_Height;
void EasyAIDraw() {
  EAI_X=RScoreX;
  EAI_Y=(lineY8 + ((lineHeight*3)/2));
  EAI_Width=RScoreWidth;
  EAI_Height=RScoreHeight;
  rect(EAI_X,EAI_Y,EAI_Width,EAI_Height);
  
  
  
  
  
}

void EasyAIMousePressed() {
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
  if ((squaresUsed%2) == 0) {
    delay(3000);
    squareNumber = int(random(0,9));
    squaresUsed++;
  }
  
}
