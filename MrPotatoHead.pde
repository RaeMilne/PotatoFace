
int numRow = 3;
int numCol = 3;
int x1 = 50;
int y1 = 150;
int spacing = 75;
int btnS = 60;

Part[][] buttons = new Part[numRow][numCol]; 

String[][] partName = 

{ 
  {
    "eyes1.svg", "nose1.svg", "mouth1.svg"
  }
  , 
  {
    "eyes2.svg", "nose2.svg", "mouth2.svg"
  }
  , 
  {
    "eyes3.svg", "nose3.svg", "mouth3.svg"
  }
};

int xPart = 415;

int[][] yPart =
{
  {
    75, 160, 240
  }
  , 
  {
    75, 165, 240
  }
  , 
  {
    80, 150, 240
  }
};

int szPart = 125;


PImage img;

void setup() {

  size(680, 420);

  img = loadImage("Potato.png");

  PFont font;
  font = loadFont("AdobeGothicStd-Bold-48.vlw");
  textAlign(CENTER);
  textFont(font, 36);

  for (int j = 0 ; j < numCol ; j++) {
    for (int i = 0 ; i < numRow; i++) {

      buttons[i][j] = new Part(x1+spacing*i, y1+spacing*j, btnS);
    }
  }
}

void draw() {

  background(#AEE0E8);


  image(img, 0, 0);


  fill(100);
  text("Potato Face", 160, 100);

  for (int j = 0 ; j < numCol ; j++) {
    for (int i = 0 ; i < numRow; i++) {

      buttons[i][j].drawButton(partName[i][j], xPart, yPart[i][j], szPart);
      buttons[i][j].drawIcon(partName[i][j], x1+spacing*i+10, y1+spacing*j+10, szPart/3);
    }
  }
}

void mousePressed() {

  for (int j = 0 ; j < numCol ; j++) {
    for (int i = 0; i < numRow; i++) {
      buttons[i][j].checkIfPressed(mouseX, mouseY);
    }
  }
}

void mouseMoved() { 

  for (int j = 0; j < numCol; j++) {
    for (int i = 0; i < numRow; i++) {
      buttons[i][j].checkIfOver(mouseX, mouseY);
    }
  }
}

