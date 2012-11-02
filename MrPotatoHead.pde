
int numRow = 3;
int numCol = 3;
int x1 = 75;
int y1 = 75;
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

int[][] xPart =
{
  {400, 400, 400},
  {400, 400, 400},
  {400, 400, 400}
};

int[][] yPart =
{
  {100, 160, 225},
  {100, 160, 225},
  {100, 160, 225}
};

int[][] wPart =
{
  {450, 450, 400},
  {450, 450, 400},
  {450, 450, 400}
};

int[][] htPart =
{
  {300, 300, 400},
  {300, 300, 400},
  {300, 300, 400}
};


    
    

PImage img;

void setup() {

  size(680, 420);

  img = loadImage("Potato.png");

  for (int j = 0 ; j < numCol ; j++) {
    for (int i = 0 ; i < numRow; i++) {

      buttons[i][j] = new Part(x1*(i+1), y1*(j+1), btnS);
    }
  }
}

void draw() {

  background(150);
  
  int x1 = 75;
  int y1 = 75;

  image(img, 0, 0);

  for (int j = 0 ; j < numCol ; j++) {
    for (int i = 0 ; i < numRow; i++) {

      buttons[i][j].drawIcon(partName[i][j], x1*(i+1)+btnS/4, y1*(j+1)+btnS/4, wPart[i][j]/4, htPart[i][j]/4);
      buttons[i][j].drawButton(partName[i][j], xPart[i][j], yPart[i][j], wPart[i][j], htPart[i][j]);
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

