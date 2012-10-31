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

      if (inputString.equals("nose1")) {
        drawNose1();
      } 
      else if (inputString.equals("nose2")) {
        drawNose2();
      } 
      else if (inputString.equals("nose3")) {
        drawNose3();
      } 
      else if (inputString.equals("eyes1")) {
        drawEyes1();
      } 
      else if (inputString.equals("eyes2")) {
        drawEyes2();
      }  
      else if (inputString.equals("eyes3")) {
        drawEyes3();
      } 
      else if (inputString.equals("mouth1")) {
        drawMouth1();
      } 
      else if (inputString.equals("mouth2")) {
        drawMouth2();
      }  
      else if (inputString.equals("mouth3")) {
        drawMouth3();
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

void drawEyes1() {
  PShape s;
  s = loadShape("eyes1.svg");
  shape(s, 400, 100, 450, 300);
}

void drawEyes2() {
  PShape s;
  s = loadShape("eyes2.svg");
  shape(s, 400, 100, 450, 300);
}

void drawEyes3() {
  PShape s;
  s = loadShape("eyes3.svg");
  shape(s, 400, 100, 450, 300);
}

void drawNose1() {
  PShape s;
  s = loadShape("nose1.svg");
  shape(s, 425, 160, 500, 300);
}

void drawNose2() {
  PShape s;
  s = loadShape("nose2.svg");
  shape(s, 400, 160, 450, 300);
}

void drawNose3() {
  PShape s;
  s = loadShape("nose3.svg");
  shape(s, 400, 160, 450, 300);
}


void drawMouth1() {
  PShape s;
  s = loadShape("mouth1.svg");
  shape(s, 400, 225, 400, 400);
}

void drawMouth2() {
  PShape s;
  s = loadShape("mouth2.svg");
  shape(s, 400, 225, 400, 400);
}

void drawMouth3() {
  PShape s;
  s = loadShape("mouth3.svg");
  shape(s, 400, 225, 400, 400);
}

