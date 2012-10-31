

Part eyesButton = new Part(50, 50, 30);
Part noseButton = new Part(100, 50, 30);
Part mouthButton = new Part(150, 50, 30);

PImage img;

void setup() {
  size(680, 420);
  img = loadImage("Potato.png");
}

void draw() {

  background(150);

  image(img, 0, 0);

  eyesButton.drawButton("eyes");
  noseButton.drawButton("nose");
  mouthButton.drawButton("mouth");
}

void mousePressed() {
  eyesButton.checkIfPressed(mouseX, mouseY);
  noseButton.checkIfPressed(mouseX, mouseY);
  mouthButton.checkIfPressed(mouseX, mouseY);
}

void mouseMoved() { 
  eyesButton.checkIfOver(mouseX, mouseY);
  noseButton.checkIfOver(mouseX, mouseY);
  mouthButton.checkIfOver(mouseX, mouseY);
}


