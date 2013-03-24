/*
*Rae Milne
*Slow Code with Amit Pitaru
*Fall 2012 | SVA IXD
*Comments added 24 March 2013

*Program to explore use of buttons, 
*and working with images and vector files.
*Lets users add facial features (eyes, nose, 
*mouth) to a potato.
*/

int numRow = 3;
int numCol = 3;
int x1 = 50;
int y1 = 150;
int spacing = 75;
int btnS = 60;

//Store PotatoFace buttons in 2D array

Part[][] buttons = new Part[numRow][numCol]; 



String[][] partName = //List of part files

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

int xPart = 415; //x-Position

int[][] yPart = //y-Position
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

int szPart = 125; //size of the parts


PImage img;

void setup() {

  size(680, 420);

  img = loadImage("Potato.png"); //load potato background images

  PFont font;
  font = loadFont("AdobeGothicStd-Bold-48.vlw"); //load font file
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
  
  //draw buttons with icons of each body part

  for (int j = 0 ; j < numCol ; j++) {
    for (int i = 0 ; i < numRow; i++) {

      buttons[i][j].drawButton(partName[i][j], xPart, yPart[i][j], szPart);
      buttons[i][j].drawIcon(partName[i][j], x1+spacing*i+10, y1+spacing*j+10, szPart/3);
    }
  }
}

void mousePressed() {
  
  //check if mouse has been pressed

  for (int j = 0 ; j < numCol ; j++) {
    for (int i = 0; i < numRow; i++) {
      buttons[i][j].checkIfPressed(mouseX, mouseY);
    }
  }
}

void mouseMoved() { 
  
  //check is mouse is hovering over button

  for (int j = 0; j < numCol; j++) {
    for (int i = 0; i < numRow; i++) {
      buttons[i][j].checkIfOver(mouseX, mouseY);
    }
  }
}

