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

    String inputString = _inputString;

    if (isPressed == true)
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
    else if (isPressed == false) {
      fill(255);
    }

    if (isOver == true) 
    {
      stroke(255, 0, 0);
      strokeWeight(3);
    } 
    else if (isOver == false) {
      noStroke();
      strokeWeight(0);
    }

    rect(xPos, yPos, s, s);
  }

  void checkIfPressed (int _mx, int _my) {
    if ((_mx > xPos && _mx < xPos+s) && (_my > yPos && _my < yPos+s)) //if mouse within btn area
    {
      if (isPressed == false)
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
  shape(s, 400, 150, 200, 200);
}

void drawEyes() {
  PShape s;
  s = loadShape("eyes1.svg");
  shape(s, 400, 100, 200, 150);
}

void drawMouth() {
  PShape s;
  s = loadShape("mouth1.svg");
  shape(s, 400, 275, 200, 200);
}

