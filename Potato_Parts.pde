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


  void drawIcon(String _inputString, int _xPos, int _yPos, int _size) 
  {

    drawPart(_inputString, _xPos, _yPos, _size);
  }

  void drawButton(String _inputString, int _xPos, int _yPos, int _size) 
  {

    ellipseMode(CORNER);

    if (isPressed)
    {
      fill(0, 60);
      drawPart(_inputString, _xPos, _yPos, _size);
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

