class Part {

  int xPos;
  int yPos;
  int s;
  boolean isPressed;
  boolean isOver;

  int xPart;
  int yEyes;
  int yNose;
  int yMouth;
  int eyesW;
  int eyesH;
  int noseW;
  int noseH;
  int mouthW;
  int mouthH;
  
  Part(int _xPos, int _yPos, int _s) {

    xPos = _xPos;
    yPos = _yPos;
    s = _s;

    isPressed = false;
    isOver = false;
    
    xPart = 400;
    yEyes = 100;
    yNose = 160;
    yMouth = 225;
    
    eyesW = 450;
    eyesH = 300;
    noseW = 450;
    noseH = 300;
    mouthW = 400;
    mouthH = 400;
  }


void drawIcon(String _inputString) {

  String inputString = _inputString;
  int szS = 3;
  
  
      if (inputString.equals("nose1")) {
        drawNose1(xPos+s/4, yPos+s/4, noseW/szS, noseH/szS);
      } 
    else if (inputString.equals("nose2")) {
        drawNose2(xPos+s/4, yPos+s/4, noseW/szS, noseH/szS );
      } 
      else if (inputString.equals("nose3")) {
        drawNose3(xPos+s/4, yPos+s/4, noseW/szS, noseH/szS);
      } 
      else if (inputString.equals("eyes1")) {
        drawEyes1(xPos+s/6, yPos+s/6, eyesW/szS, eyesH/szS);
      } 
      else if (inputString.equals("eyes2")) {
        drawEyes2(xPos+s/6, yPos+s/6, eyesW/szS, eyesH/szS);
      }  
      else if (inputString.equals("eyes3")) {
        drawEyes3(xPos+s/6, yPos+s/6, eyesW/szS, eyesH/szS);
      } 
      else if (inputString.equals("mouth1")) {
        drawMouth1(xPos+s/4, yPos+s/4, mouthW/szS, mouthH/szS);
      } 
      else if (inputString.equals("mouth2")) {
        drawMouth2(xPos+s/4, yPos+s/4, mouthW/szS, mouthH/szS);
      }  
      else if (inputString.equals("mouth3")) {
        drawMouth3(xPos+s/4, yPos+s/4, mouthW/szS, mouthH/szS);
      }
}

  void drawButton(String _inputString) {

  ellipseMode(CORNER);

    String inputString = _inputString;

    if (isPressed)
    {
      fill(0, 50);

      if (inputString.equals("nose1")) {
        drawNose1(xPart, yNose, noseW, noseH);
      } 
    else if (inputString.equals("nose2")) {
        drawNose2(xPart, yNose, noseW, noseH );
      } 
      else if (inputString.equals("nose3")) {
        drawNose3(xPart, yNose, noseW, noseH);
      } 
      else if (inputString.equals("eyes1")) {
        drawEyes1(xPart, yEyes, eyesW, eyesH);
      } 
      else if (inputString.equals("eyes2")) {
        drawEyes2(xPart, yEyes, eyesW, eyesH);
      }  
      else if (inputString.equals("eyes3")) {
        drawEyes3(xPart, yEyes, eyesW, eyesH);
      } 
      else if (inputString.equals("mouth1")) {
        drawMouth1(xPart, yMouth, mouthW, mouthH);
      } 
      else if (inputString.equals("mouth2")) {
        drawMouth2(xPart, yMouth, mouthW, mouthH);
      }  
      else if (inputString.equals("mouth3")) {
        drawMouth3(xPart, yMouth, mouthW, mouthH);
      }
    } 
    else if (!isPressed) {
      fill(255, 50);
    }

    if (isOver) 
    {
      stroke(255, 0, 0);
      strokeWeight(3);
    } 
    else if (!isOver) {
      stroke(192, 192, 192);
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


void drawEyes1(int _x1,int _y1,int _sizeX,int _sizeY) {
  PShape s;
  s = loadShape("eyes1.svg");
  shape(s, _x1, _y1, _sizeX, _sizeY);
}

void drawEyes2(int _x1,int _y1,int _sizeX,int _sizeY) {
  PShape s;
  s = loadShape("eyes2.svg");
  shape(s, _x1, _y1, _sizeX, _sizeY);
}

void drawEyes3(int _x1,int _y1,int _sizeX,int _sizeY) {
  PShape s;
  s = loadShape("eyes3.svg");
  shape(s, _x1, _y1, _sizeX, _sizeY);
} 

void drawNose1(int _x1,int _y1,int _sizeX,int _sizeY) {
  PShape s;
  s = loadShape("nose1.svg");
  shape(s, _x1, _y1, _sizeX, _sizeY);
}

void drawNose2(int _x1,int _y1,int _sizeX,int _sizeY) {
  PShape s;
  s = loadShape("nose2.svg");
  shape(s, _x1, _y1, _sizeX, _sizeY);
}

void drawNose3(int _x1,int _y1,int _sizeX,int _sizeY) {
  PShape s;
  s = loadShape("nose3.svg");
  shape(s, _x1, _y1, _sizeX, _sizeY);
}


void drawMouth1(int _x1,int _y1,int _sizeX,int _sizeY) {
  PShape s;
  s = loadShape("mouth1.svg");
  shape(s, _x1, _y1, _sizeX, _sizeY);
}

void drawMouth2(int _x1,int _y1,int _sizeX,int _sizeY) {
  PShape s;
  s = loadShape("mouth2.svg");
  shape(s, _x1, _y1, _sizeX, _sizeY);
}

void drawMouth3(int _x1,int _y1,int _sizeX,int _sizeY) {
  PShape s;
  s = loadShape("mouth3.svg");
  shape(s, _x1, _y1, _sizeX, _sizeY);
}

