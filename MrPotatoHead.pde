
int numRow = 3;
int numCol = 3;
int x1 = 50;
int y1 = 50;
int btnS = 30;


Part[][] buttons = new Part[numRow][numCol];

String[][] parts = 

{ 
  {
    "eyes1", "nose1", "mouth1"
  }
  , 
  {
    "eyes2", "nose2", "mouth2"
  }
  , 
  {
    "eyes3", "nose3", "mouth3"
  }
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

  image(img, 0, 0);

  for (int j = 0 ; j < numCol ; j++) {
    for (int i = 0 ; i < numRow; i++) {

      buttons[i][j].drawButton(parts[i][j]);
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

