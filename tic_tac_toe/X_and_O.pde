
float lineWidth,lineHeight;
// note: the diameter of the circle and X are 2/147 of the displayWidth 

void X_and_ODraw() {
lineWidth=(linex1 - linex5);
lineHeight=(lineY5 - lineY1);
fill(#000000);
rect(linex5,lineY1,lineWidth,lineHeight);
noFill();
}//end draw
//
void X_and_OMousePressed() {
  
   if (mouseX>linex5 && mouseX<linex5+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {
    exit();
  }
  if (mouseX>linex1 && mouseX<linex5+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {
    exit();
  }
  if (mouseX>linex5 && mouseX<linex5+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {
    exit();
  }
  if (mouseX>linex5 && mouseX<linex5+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {
    exit();
  }
  if (mouseX>linex5 && mouseX<linex5+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {
    exit();
  }
  if (mouseX>linex5 && mouseX<linex5+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {
    exit();
  }
  if (mouseX>linex5 && mouseX<linex5+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {
    exit();
  }
  if (mouseX>linex5 && mouseX<linex5+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {
    exit();
  }
  if (mouseX>linex5 && mouseX<linex5+lineWidth && mouseY>lineY1 && mouseY<lineY1+lineHeight) {
    exit();
  }
  
}//end mousepressed
