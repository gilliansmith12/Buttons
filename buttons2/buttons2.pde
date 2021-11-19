//Global Variables
//
float buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, textColour, red=#DD1700, green=#048100, white=#FFFFFF, reset=white, black=#000000;
PImage pic1, pic2;
float pic1ImageWidthRatio, pic1ImageHeightRatio;
float picX1, picY1, picWidth1, picHeight1;
float pic2ImageWidthRatio, pic2ImageHeightRatio;
float picX2, picY2, picWidth2, picHeight2;
//
void setup() {
  //Geometry
  fullScreen(); //size(width, height);
  //
  //Population
  buttonX = displayWidth*1/4;
  buttonY = displayHeight*1/3;
  buttonWidth = displayWidth*1/2;
  buttonHeight = displayHeight*1/3;
  //
  pic1 = loadImage("helloGoodbye.png");
  pic2 = loadImage("helloGoodbye2.png");
  //
  pic1ImageWidthRatio = 213.0/213.0; //Longest side is 1
  pic1ImageHeightRatio = 90.0/213.0; //Shorter side is less that 1
  picWidth1 = buttonWidth;
  picHeight1 = buttonHeight;
  picX1 = buttonX;
  picY1 = buttonY;
  pic2ImageWidthRatio = 328.0/328.0;
  pic2ImageHeightRatio = 93.0/351.0;
  picHeight2 = buttonHeight;
  picWidth2 = buttonWidth;
  picX2 = buttonX;
  picY2 = buttonY;
  //
  } //End setup()

void draw() {
  background(white);
  if ( mouseX >= buttonX  && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight ) {
      buttonColour = green;
    } else {
      buttonColour = red;
      } //End IF Button Colour
  fill(buttonColour);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(reset);
  //
  if ( mouseX >= buttonX  && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight ) {
      image(pic2, picX2, picY2, picWidth2, picHeight2);
    } else {
      image(pic1, picX1, picY1, picWidth1, picHeight1);
      } //End IF Button Picture
  //
  } //End draw()

void mousePressed() {
  if ( mouseX >= buttonX  && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight ) exit();

  } //End mousePressed

void keyPressed () {

  } //End keyPressed
