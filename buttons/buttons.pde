//Global Variables
//
float buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, textColour, red=#DD1700, green=#048100, white=#FFFFFF, reset=white, black=#000000;
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
  } //End draw()

void mousePressed() {
  if ( mouseX >= buttonX  && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight ) exit();

  } //End mousePressed

void keyPressed () {

  } //End keyPressed
