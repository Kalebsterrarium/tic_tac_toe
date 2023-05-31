boolean Opos[] = new boolean[9];
boolean Xpos[] = new boolean[9];
boolean OWon=false ,XWon=false;


void ThreeInARow() {

  for (int TIANcheck=0; TIANcheck != (savedO.length); TIANcheck++) {
    println(TIANcheck);
    if ( savedO[TIANcheck] == 0) {
      Opos[0]=true;
      println("o in square 0");
    }
    if ( savedO[TIANcheck] == 1) {
      Opos[1]=true;
      println("o in square 1");
    }
    if ( savedO[TIANcheck] == 2) {
      Opos[2]=true;
      println("o in square 2");
    }
    if ( savedO[TIANcheck] == 3) {
      Opos[3]=true;
      println("o in square 0");
    }
    if ( savedO[TIANcheck] == 4) {
      Opos[4]=true;
      println("o in square 1");
    }
    if ( savedO[TIANcheck] == 5) {
      Opos[5]=true;
      println("o in square 2");
    }
    if ( savedO[TIANcheck] == 6) {
      Opos[6]=true;
      println("o in square 0");
    }
    if ( savedO[TIANcheck] == 7) {
      Opos[7]=true;
      println("o in square 1");
    }
    if ( savedO[TIANcheck] == 8) {
      Opos[8]=true;
      println("o in square 2");
    }
  }

  if (Opos[0] == true && Opos[1] == true && Opos[2] == true ) {
    OWon=true;
    println("O has won the game");
  }
  if (Opos[3] == true && Opos[4] == true && Opos[5] == true ) {
    OWon=true;
    println("O has won the game");
  }
  if (Opos[6] == true && Opos[7] == true && Opos[8] == true ) {
    OWon=true;
    println("O has won the game");
  }
  if (Opos[0] == true && Opos[3] == true && Opos[6] == true ) {
    OWon=true;
    println("O has won the game");
  }
  if (Opos[1] == true && Opos[4] == true && Opos[7] == true ) {
    OWon=true;
    println("O has won the game");
  }
  if (Opos[2] == true && Opos[5] == true && Opos[8] == true ) {
    OWon=true;
    println("O has won the game");
  }
  if (Opos[0] == true && Opos[4] == true && Opos[8] == true ) {
    OWon=true;
    println("O has won the game");
  }
  if (Opos[2] == true && Opos[4] == true && Opos[6] == true ) {
    OWon=true;
    println("O has won the game");
  }
  //
  for (int TIANcheck=0; TIANcheck != (savedX.length); TIANcheck++) {
    println(TIANcheck);
    if ( savedX[TIANcheck] == 0) {
      Xpos[0]=true;
      println("o in square 0");
    }
    if ( savedX[TIANcheck] == 1) {
      Xpos[1]=true;
      println("o in square 1");
    }
    if ( savedX[TIANcheck] == 2) {
      Xpos[2]=true;
      println("o in square 2");
    }
    if ( savedX[TIANcheck] == 3) {
      Xpos[3]=true;
      println("o in square 0");
    }
    if ( savedX[TIANcheck] == 4) {
      Xpos[4]=true;
      println("o in square 1");
    }
    if ( savedX[TIANcheck] == 5) {
      Xpos[5]=true;
      println("o in square 2");
    }
    if ( savedX[TIANcheck] == 6) {
      Xpos[6]=true;
      //println("o in square 0");
    }
    if ( savedX[TIANcheck] == 7) {
      Xpos[7]=true;
      //println("o in square 1");
    }
    if ( savedX[TIANcheck] == 8) {
      Xpos[8]=true;
      //println("o in square 2");
    }
  }

  if (Xpos[0] == true && Xpos[1] == true && Xpos[2] == true ) {
    XWon=true;
    //println("O has won the game");
  }
  if (Xpos[3] == true && Xpos[4] == true && Xpos[5] == true ) {
    XWon=true;
    //println("O has won the game");
  }
  if (Xpos[6] == true && Xpos[7] == true && Xpos[8] == true ) {
    XWon=true;
    //println("O has won the game");
  }
  if (Xpos[0] == true && Xpos[3] == true && Xpos[6] == true ) {
    XWon=true;
    //println("O has won the game");
  }
  if (Xpos[1] == true && Xpos[4] == true && Xpos[7] == true ) {
    XWon=true;
    //println("O has won the game");
  }
  if (Xpos[2] == true && Xpos[5] == true && Xpos[8] == true ) {
    XWon=true;
    //println("O has won the game");
  }
  if (Xpos[0] == true && Xpos[4] == true && Xpos[8] == true ) {
    XWon=true;
   // println("O has won the game");
  }
  if (Xpos[2] == true && Xpos[4] == true && Xpos[6] == true ) {
    XWon=true;
    //println("O has won the game");
  }
}
