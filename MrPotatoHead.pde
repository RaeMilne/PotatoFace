


Part noseButton = new Part(50, 50, 30);
Part eyesButton = new Part(100, 50, 30);
Part mouthButton = new Part(150, 50, 30);

PImage img;

void setup() {
  size(680, 420);
  img = loadImage("Potato.png");
}

void draw() {

  background(150);

  image(img, 0, 0);

  noseButton.drawButton("nose");
  eyesButton.drawButton("eyes");
  mouthButton.drawButton("mouth");
}

void mousePressed() {
  noseButton.checkIfPressed(mouseX, mouseY);
  eyesButton.checkIfPressed(mouseX, mouseY);
  mouthButton.checkIfPressed(mouseX, mouseY);
}

void mouseMoved() { 
  noseButton.checkIfOver(mouseX, mouseY);
  eyesButton.checkIfOver(mouseX, mouseY);
  mouthButton.checkIfOver(mouseX, mouseY);
}


