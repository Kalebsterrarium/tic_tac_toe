void HardAlgorithm() {
  if ( savedX[0] == 0 || savedX[0] == 2 || savedX[0] == 6 ||savedX[0] == 8) {
    if ( savedX.length == 1) {
      squareNumber = 4;
      squaresUsed++;
    }
    if (savedX.length == 2) {
      if ( savedX[0] == 0 || savedX[1] == 0 ) {
        if (savedX[0] == 2 || savedX[1] == 2 ) {
          if (savedX[1] != 1) {
            squareNumber = 1;
            squaresUsed++;
          }
        }
        if (savedX[0] == 6 || savedX[1] == 6 ) {
          if (savedX[1] != 3) {
            squareNumber = 3;
            squaresUsed++;
          }
        }
      }
      if ( savedX[0] == 8 || savedX[1] == 8 ) {
        if (savedX[0] == 2 || savedX[1] == 2 ) {
          if (savedX[1] != 5) {
            squareNumber = 5;
            squaresUsed++;
          }
        }
        if (savedX[0] == 6 || savedX[1] == 6 ) {
          if (savedX[1] != 7) {
            squareNumber = 7;
            squaresUsed++;
          }
        }
      }
      if ( savedX[0] == 0 || savedX[0] == 8) {
        if ( savedX[1] == 0 || savedX[1] == 8) {
           int random = int(random(Random2.length));
      squareNumber = Random2[random];
      squaresUsed++;
        }
        
        
      }
      if ( savedX[0] == 2 || savedX[0] == 6) {
        if ( savedX[1] == 2 || savedX[1] == 6) {
           int random = int(random(Random2.length));
      squareNumber = Random2[random];
      squaresUsed++;
        }
        
        
      }
     if ( savedX[0] == 0) {
        if (savedX[1] == 1 ) {
          squareNumber = 2;
          squaresUsed++;
        }
     }
         if ( savedX[0] == 0) {
        if (savedX[1] == 3 ) {
          squareNumber = 6;
          squaresUsed++;
        }
         }
        if ( savedX[0] == 2) {
        if (savedX[1] == 1 ) {
          squareNumber = 0;
          squaresUsed++;
        }
        }
         if ( savedX[0] == 2) {
        if (savedX[1] == 5 ) {
          squareNumber = 8;
          squaresUsed++;
        }
         }
        if ( savedX[0] == 6) {
        if (savedX[1] == 3 ) {
          squareNumber = 0;
          squaresUsed++;
        }
        }
         if ( savedX[0] == 6) {
        if (savedX[1] == 7 ) {
          squareNumber = 8;
          squaresUsed++;
        }
         }
        if ( savedX[0] == 8) {
        if (savedX[1] == 7 ) {
          squareNumber = 6;
          squaresUsed++;
        }
        }
         if ( savedX[0] == 8) {
        if (savedX[1] == 5 ) {
          squareNumber = 2;
          squaresUsed++;
        }
         }
         if ( savedX[0] == 0) {
        if (savedX[1] == 5 ) {
          squareNumber = 2;
          squaresUsed++;
        }
     }
         if ( savedX[0] == 0) {
        if (savedX[1] == 7 ) {
          squareNumber = 6;
          squaresUsed++;
        }
         }
        if ( savedX[0] == 2) {
        if (savedX[1] == 7 ) {
        squareNumber =8;
        squaresUsed++;
        }
        }
         if ( savedX[0] == 2) {
        if (savedX[1] == 3 ) {
          squareNumber = 0;
          squaresUsed++;
        }
         }
        if ( savedX[0] == 6) {
        if (savedX[1] == 1 ) {
         squareNumber = 0;
         squaresUsed++;
        }
        }
         if ( savedX[0] == 6) {
        if (savedX[1] == 5 ) {
         squareNumber= 8;
         squaresUsed++;
        }
         }
        if ( savedX[0] == 8) {
        if (savedX[1] == 1 ) {
          squareNumber =2;
         squaresUsed++;
        
        }
        }
         if ( savedX[0] == 8) {
        if (savedX[1] == 3 ) {
         squareNumber =6;
         squaresUsed++;
        }
         }
    }
    if (savedX.length == 3) {
      if ( savedO[0] == 2 || savedO[1] == 2 ) {
        if (savedO[0] == 4 || savedO[1] == 4 ) {
          if (savedX[2] != 6) {
            squareNumber = 6;
            squaresUsed++;
            DumbMove=true;
          }
        }
        
      }
      if ( savedO[0] == 0 || savedO[1] == 0 ) {
        if (savedO[0] == 4 || savedO[1] == 4 ) {
          if (savedX[2] != 8) {
            squareNumber = 8;
            squaresUsed++;
            DumbMove=true;
          }
        }
        
      }
      if ( savedO[0] == 6 || savedO[1] == 6 ) {
        if (savedO[0] == 4 || savedO[1] == 4 ) {
          if (savedX[2] != 2) {
            squareNumber = 2;
            squaresUsed++;
            DumbMove=true;
          }
        }
        
      }
      if ( savedO[0] == 8 || savedO[1] == 8 ) {
        if (savedO[0] == 4 || savedO[1] == 4 ) {
          if (savedX[2] != 0) {
            squareNumber = 0;
            squaresUsed++;
            DumbMove=true;
          }
        }
        
      }
      if ( savedO[0] == 1 || savedO[1] == 1 ) {
        if (savedO[0] == 4 || savedO[1] == 4 ) {
          if (savedX[2] != 7) {
            squareNumber = 7;
            squaresUsed++;
            DumbMove=true;
          }
        }
        
      }
      if ( savedO[0] == 3 || savedO[1] == 3 ) {
        if (savedO[0] == 4 || savedO[1] == 4 ) {
          if (savedX[2] != 5) {
            squareNumber = 5;
            squaresUsed++;
            DumbMove=true;
          }
        }
        
      }
      if ( savedO[0] == 5 || savedO[1] == 5 ) {
        if (savedO[0] == 4 || savedO[1] == 4 ) {
          if (savedX[2] != 3) {
            squareNumber = 3;
            squaresUsed++;
            DumbMove=true;
          }
        }
        
      }
      if ( savedO[0] == 7 || savedO[1] == 7 ) {
        if (savedO[0] == 4 || savedO[1] == 4 ) {
          if (savedX[2] != 1) {
            squareNumber = 1;
            squaresUsed++;
            DumbMove=true;
          }
        }
        
      }
      
    }
  }


















  if (savedX[0] == 4) {
    if (savedX.length == 1 ) {
      int random = int(random(Random1.length));
      squareNumber = Random1[random];
      squaresUsed++;
    }
    if ( savedX.length == 2) {
      if (savedX[1] == 0) {
        if (savedO[0] == 8) {
          int random = int(random(Random1.length));
          squareNumber = Random1[random];
        } else {
          squareNumber = 8;
        }
        if (sameSquare == false) {
          squaresUsed++;
        }
      }
      if (savedX[1] == 1) {
        squareNumber = 7;
        squaresUsed++;
      }
      if (savedX[1] == 2) {
        if (savedO[0] == 6) {
          int random = int(random(Random1.length));
          squareNumber = Random1[random];
        } else {
          squareNumber = 6;
        }
        if (sameSquare == false) {
          squaresUsed++;
        }
      }
      if (savedX[1] == 3) {
        squareNumber = 5;
        squaresUsed++;
      }
      if (savedX[1] == 5) {
        squareNumber = 3;
        squaresUsed++;
      }
      if (savedX[1] == 6) {
        if (savedO[0] == 2) {
          int random = int(random(Random1.length));
          squareNumber = Random1[random];
        } else {
          squareNumber = 2;
        }
        if (sameSquare == false) {
          squaresUsed++;
        }
      }
      if (savedX[1] == 7) {
        squareNumber = 1;
        squaresUsed++;
      }
      if (savedX[1] == 8) {
        if (savedO[0] == 0) {
          int random = int(random(Random1.length));
          squareNumber = Random1[random];
        } else {
          squareNumber = 0;
        }
        if (sameSquare == false) {
          squaresUsed++;
        }
      }
    }
    if (savedX.length == 3) {
      if ( savedO[0] == 0 || savedO[1] == 0 ) {
        if (savedO[0] == 2 || savedO[1] == 2 ) {
          if (savedX[2] != 1) {
            squareNumber = 1;
            squaresUsed++;
            DumbMove=true;
          }
        }
        if (savedO[0] == 6 || savedO[1] == 6 ) {
          if (savedX[2] != 3) {
            squareNumber = 3;
            squaresUsed++;
            DumbMove=true;
          }
        }
      }
      if ( savedO[0] == 8 || savedO[1] == 8 ) {
        if (savedO[0] == 2 || savedO[1] == 2 ) {
          if (savedX[2] != 5) {
            squareNumber = 5;
            squaresUsed++;
            DumbMove=true;
          }
        }
        if (savedO[0] == 6 || savedO[1] == 6 ) {
          if (savedX[2] != 7) {
            squareNumber = 7;
            squaresUsed++;
            DumbMove=true;
          }
        }
      }

      if (DumbMove == false) {
        if (savedX[2] == 0) {
          if (savedO[0] == 8 || savedO[1] == 8 ) {
            int random = int(random(Random1.length));
            squareNumber = Random1[random];
          } else {
            squareNumber = 8;
          }
          if (sameSquare == false) {
            squaresUsed++;
          }
        }
        if (savedX[2] == 1) {
          squareNumber = 7;
          squaresUsed++;
        }
        if (savedX[2] == 2) {
          if (savedO[0] == 6 || savedO[1] == 6 ) {
            int random = int(random(Random1.length));
            squareNumber = Random1[random];
          } else {
            squareNumber = 6;
          }
          if (sameSquare == false) {
            squaresUsed++;
          }
        }
        if (savedX[2] == 3) {
          squareNumber = 5;
          squaresUsed++;
        }
        if (savedX[2] == 5) {
          squareNumber = 3;
          squaresUsed++;
        }
        if (savedX[2] == 6) {
          if (savedO[0] == 2 || savedO[1] == 2 ) {
            int random = int(random(Random1.length));
            squareNumber = Random1[random];
          } else {
            squareNumber = 2;
          }
          if (sameSquare == false) {
            squaresUsed++;
          }
        }
        if (savedX[2] == 7) {
          squareNumber = 1;
          squaresUsed++;
        }
        if (savedX[2] == 8) {
          if (savedO[0] == 0 || savedO[1] == 0 ) {
            int random = int(random(Random1.length));
            squareNumber = Random1[random];
          } else {
            squareNumber = 0;
          }
          if (sameSquare == false) {
            squaresUsed++;
          }
        }
      }
    }
    if (savedX.length == 4) {
      if (savedX[3] == 0) {
        squareNumber = 8;
        squaresUsed++;
      }
      if (savedX[3] == 1) {
        squareNumber = 7;
        squaresUsed++;
      }
      if (savedX[3] == 2) {
        squareNumber = 6;
        squaresUsed++;
      }
      if (savedX[3] == 3) {
        squareNumber = 5;
        squaresUsed++;
      }
      if (savedX[3] == 5) {
        squareNumber = 3;
        squaresUsed++;
      }
      if (savedX[3] == 6) {
        squareNumber = 2;
        squaresUsed++;
      }
      if (savedX[3] == 7) {
        squareNumber = 1;
        squaresUsed++;
      }
      if (savedX[3] == 8) {
        squareNumber = 0;
        squaresUsed++;
      }
    }
  }
}
