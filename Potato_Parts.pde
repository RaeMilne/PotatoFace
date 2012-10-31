class Part {
  int xPos;
  int yPos;
  int s;
  boolean isPressed;
  boolean isOver;

  Part (int _xPos, int _yPos, int _s) {

    xPos = _xPos;
    yPos = _yPos;
    s = _s;

    isPressed = false;
    isOver = false;
  }

  void drawButton(String _inputString) {
    
    ellipseMode(CORNER);

    String inputString = _inputString;

    if (isPressed)
    {
      fill(0);

      if (inputString.equals("nose")) {
        drawNose();
      } 
      else if (inputString.equals("eyes")) {
        drawEyes();
      } 
      else if (inputString.equals("mouth")) {
        drawMouth();
      }
    } 
    else if (!isPressed) {
      fill(255);
    }

    if (isOver) 
    {
      stroke(255, 0, 0);
      strokeWeight(3);
    } 
    else if (!isOver) {
      noStroke();
      strokeWeight(0);
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


void drawNose() {
  PShape s;
  s = loadShape("nose1.svg");
  shape(s, 425, 160, 500, 300);
}

void drawEyes() {
  PShape s;
  s = loadShape("eyes1.svg");
  shape(s, 400, 100, 450, 300);
}

void drawMouth() {
  PShape s;
  s = loadShape("mouth1.svg");
  shape(s, 400, 250, 400, 400);
}

