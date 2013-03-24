/*
Object for the various facial parts:
eyes, nose, mouth

*/

class Part {

  int xPos;
  int yPos;
  int s;
  boolean isPressed;
  boolean isOver;


  Part(int _xPos, int _yPos, int _s) {

    xPos = _xPos;
    yPos = _yPos;
    s = _s;

    isPressed = false;
    isOver = false;
  }


//Draw small icons of each part on top of each button

  void drawIcon(String _inputString, int _xPos, int _yPos, int _size) 
  {

    drawPart(_inputString, _xPos, _yPos, _size);
  }
  
  
//Draw the base of the button

  void drawButton(String _inputString, int _xPos, int _yPos, int _size) 
  {

    ellipseMode(CORNER);

    if (isPressed)
    {
      fill(0, 60);
      drawPart(_inputString, _xPos, _yPos, _size); //when corresponding button is pressed, draw the facial feature on the potato
    } 
    else if (!isPressed) {
      fill(255, 75);
    }

    if (isOver) 
    {
      stroke(255, 0, 0);
      strokeWeight(3);
    } 
    else if (!isOver) {
      stroke(100, 100, 100);
      strokeWeight(1);
    }

    ellipse(xPos, yPos, s, s);
  }

//Check if the button has been pressed

  void checkIfPressed (int _mx, int _my) {
    if ((_mx > xPos && _mx < xPos+s) && (_my > yPos && _my < yPos+s)) //if mouse within btn area
    {
      if (!isPressed)
      {
        isPressed = true;
      }
      else {
        isPressed = false;
      }
    }
  }
  
//Check if the user is hovering over the button

  void checkIfOver (int _mx, int _my) {
    if ((_mx > xPos && _mx < xPos+s) && (_my > yPos && _my < yPos+s)) //if mouse within btn area
    {
      isOver = true;
    }
    else {
      isOver = false;
    }
  }
}


void drawPart(String _inputString, int _x1, int _y1, int _size) {
  PShape s;
  s = loadShape(_inputString);
  shape(s, _x1, _y1, _size, _size);
}

