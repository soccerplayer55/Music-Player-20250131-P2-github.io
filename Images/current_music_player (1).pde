/* Purpose: draw a rectangle
 Vocabulary
 - Declaration & Initialization
 - Local Variables v Global Variables
 - Population of variables
 */
// Library - Minim
//
// Global Variables
float quitX, quitY, quitWidth, quitHeight;
float loopX, loopY, loopWidth, loopHeight;
float displayX, displayY, displayWidth, displayHeight;

// Global Variables for Music Buttons
float playX, playY, playWidth, playHeight;
float pauseX, pauseY, pauseWidth, pauseHeight;
float stopX, stopY, stopWidth, stopHeight;
float nextX, nextY, nextWidth, nextHeight;
float previousX, previousY, previousWidth, previousHeight;

void setup() {
  // Display
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  int shortSide = (appWidth < appHeight) ? appWidth : appHeight;

  // Population
  quitX = appWidth - shortSide * 1 / 20;
  quitY = 0;
  quitWidth = shortSide * 1 / 20;
  quitHeight = shortSide * 1 / 20;

  loopX = appWidth * 1 / 4;
  loopY = appHeight * 3 / 5;
  loopWidth = appWidth * 1 / 2;
  loopHeight = appHeight * 1 / 5;

  displayX = appWidth * 1 / 4;
  displayY = appHeight * 1 / 5;
  displayWidth = appWidth * 1 / 2;
  displayHeight = appHeight * 1.5 / 5;

  // Music Button Dimensions
  int buttonWidth = displayWidth / 10;
  int buttonHeight = buttonWidth;
  int buttonY = displayHeight * 4 / 5;

  // Button Positions
  previousX = displayWidth * 2 / 10;
  previousY = buttonY;
  previousWidth = buttonWidth;
  previousHeight = buttonHeight;

  playX = displayWidth * 4 / 10;
  playY = buttonY;
  playWidth = buttonWidth;
  playHeight = buttonHeight;

  pauseX = displayWidth * 5 / 10;
  pauseY = buttonY;
  pauseWidth = buttonWidth;
  pauseHeight = buttonHeight;

  stopX = displayWidth * 6 / 10;
  stopY = buttonY;
  stopWidth = buttonWidth;
  stopHeight = buttonHeight;

  nextX = displayWidth * 8 / 10;
  nextY = buttonY;
  nextWidth = buttonWidth;
  nextHeight = buttonHeight;

  // DIVs
  rect(quitX, quitY, quitWidth, quitHeight);
  rect(loopX, loopY, loopWidth, loopHeight);
  rect(displayX, displayY, displayWidth, displayHeight);

  // Draw Buttons
  rect(previousX, previousY, previousWidth, previousHeight);
  rect(playX, playY, playWidth, playHeight);
  rect(pauseX, pauseY, pauseWidth, pauseHeight);
  rect(stopX, stopY, stopWidth, stopHeight);
  rect(nextX, nextY, nextWidth, nextHeight);
}

void draw() {
} // End draw

void mousePressed() {
  // Add logic for button interactions
  if (mouseX > playX && mouseX < playX + playWidth && mouseY > playY && mouseY < playY + playHeight) {
    println("Play button pressed");
  } else if (mouseX > pauseX && mouseX < pauseX + pauseWidth && mouseY > pauseY && mouseY < pauseY + pauseHeight) {
    println("Pause button pressed");
  } else if (mouseX > stopX && mouseX < stopX + stopWidth && mouseY > stopY && mouseY < stopY + stopHeight) {
    println("Stop button pressed");
  } else if (mouseX > nextX && mouseX < nextX + nextWidth && mouseY > nextY && mouseY < nextY + nextHeight) {
    println("Next button pressed");
  } else if (mouseX > previousX && mouseX < previousX + previousWidth && mouseY > previousY && mouseY < previousY + previousHeight) {
    println("Previous button pressed");
  }
} // End mousePressed

void keyPressed() {
} // End keyPressed
//
// End Main Program
