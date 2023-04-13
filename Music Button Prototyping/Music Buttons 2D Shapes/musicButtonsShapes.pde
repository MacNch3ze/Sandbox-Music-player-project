//Global Variables
float buttonReferentMeasure;
float buttonSide, spaceWidth, spaceHeight;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth;
float playX1, playY1, playX2, playY2, playX3, playY3;
float stopX, stopY, muteX, muteY, loopIX, loopIY;
float ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A;
float ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B;
float rrX1A, rrY1A, rrX2A, rrY2A, rrX3A, rrY3A;
float rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B;
float nextX1, nextY1, nextX2, nextY2, nextX3, nextY3, nextXR2, nextYR2, nextWidth;
float prevX1, prevY1, prevX2, prevY2, prevX3, prevY3, prevXR, prevYR, prevWidth;
float rrX, rrY, nextX, nextY, prevX, prevY, loop1X, loop1Y;
float loopPlaylistX, loopPlaylistY;
float shuffleX, shuffleY;
float space;
//
void setup() {
  //Display
  size(350, 350); //width, height
  //fullScreen(); //displayWidth, displayHeight
  //
    // -------------------------------------------
  //
  //Population: visual data 
  buttonReferentMeasure = width * 1/7.5;
  buttonSide = buttonReferentMeasure;
  spaceWidth = buttonReferentMeasure * 1/4;
  space = buttonReferentMeasure * 1/2;
  //
  float centerX = width * 1/2; //Local Variable, garbage collected at end of setup(), see println in draw()
  float centerY = height * 1/2;
  int buttonPositionColumn, buttonPositionRow;
  print("Confirming Center X:", centerX);
  println("\t Confirming Center Y:", centerY); //Illstrates a character escape
  //
    // Pause / play --------------------------------
  //
  pauseX1 = centerX - buttonReferentMeasure*1/2;
  pauseY1 = centerY - buttonReferentMeasure*1/2;
  pauseWidth = buttonReferentMeasure * 1/3;
  pauseX2 = centerX + pauseWidth*1/2;
  pauseY2 = pauseY1;
  playX1 = pauseX1;
  playY1 = pauseY1 + buttonReferentMeasure + space;
  playX3 = playX1;
  playY3 = playY1 + buttonReferentMeasure;
  //Note: need playY3 before playY2
  playX2 = playX1 + buttonReferentMeasure;
  playY2 = playY1 + (playY3-playY1)*1/2;
  //
    // Mute - (W.I.P) ------------------------------
  //
  buttonPositionRow = 1;
  muteX = pauseX1;
  muteY = pauseY1 - ( buttonPositionRow*buttonReferentMeasure + space );
  //
    // Loop Indefinitely - (W.I.P) -----------------
  //
  buttonPositionColumn = 2;
  loopIX = pauseX1 + ( buttonPositionColumn*buttonReferentMeasure + space*2 );
  loopIY = pauseY1 ;
  //
    // Fast-Forward --------------------------------
  //
  buttonPositionColumn = 1;
  ffX1A = pauseX1 + ( buttonPositionColumn*buttonReferentMeasure + space );
  ffY1A = pauseY1;
  //
  ffX3A = ffX1A;
  ffY3A = ffY1A + buttonReferentMeasure;
  ffX2A = ffX1A + buttonReferentMeasure*1/2;
  ffY2A = ffY1A + (ffY3A-ffY1A)*1/2;
  ffX1B = ffX2A;
  ffY1B = ffY1A;
  ffX2B = ffX2A + (buttonReferentMeasure*1/2);
  ffY2B = ffY2A;
  ffX3B = ffX2A;
  ffY3B = ffY3A;
  //
    // Rewind --------------------------------------
  //
  rrX = pauseX1 - (space + buttonReferentMeasure) ;
  rrX1A = pauseY1 - space;
  rrY1A = pauseY1;
  //
  rrX3A = rrX1A;
  rrY3A = rrY1A + buttonReferentMeasure;
  rrX2A = rrX1A - ( buttonPositionColumn*buttonReferentMeasure )*1/2;
  rrY2A = rrY1A + ( rrY3A - rrY1A )*1/2;
  rrX1B = rrX2A;
  rrY1B = rrY1A;
  rrX2B = rrX2A - ( buttonPositionColumn*buttonReferentMeasure )*1/2;
  rrY2B = rrY2A;
  rrX3B = rrX2A;
  rrY3B = rrY3A;
  //
    // Next Song ----------------------------------
  //
  buttonPositionColumn = 1; //can increment with +=1
  nextX = playX1 + ( buttonPositionColumn*buttonReferentMeasure + space );
  nextY = playY1;
  //
  nextX1 = nextX;
  nextY1 = nextY;
  nextX3 = nextX1;
  nextY3 = nextY1 + buttonReferentMeasure;
  nextX2 = nextX1 + buttonReferentMeasure*9/12;
  nextY2 = nextY1 + (nextY3 - nextY1)*1/2;
  nextXR2 = nextX + buttonReferentMeasure*2/3;
  nextYR2 = nextY;
  nextWidth = buttonReferentMeasure*1/3;  
  //
    // Previous Song ----------------------------
  //
  buttonPositionColumn = 1;
  prevX = playX1 - ( buttonPositionColumn*buttonReferentMeasure + space );
  prevY = playY1;
  //
  prevX1 = prevX;
  prevY1 = prevY;
  prevX1 = rrX2B + buttonReferentMeasure; //backward from previous button
  prevX3 = prevX1;
  prevY3 = prevY1 + buttonReferentMeasure;
  prevX2 = prevX1 - buttonReferentMeasure*2/3;
  prevY2 = prevY1 + ( prevY3 - prevY1 )*1/2;
  prevXR = prevX2 - buttonReferentMeasure*1/3;
  prevYR = prevY1;
  prevWidth = buttonReferentMeasure*1/3;
  //
    // Loop Once - (W.I.P) ----------------------
  //
  buttonPositionColumn = 3;
  loop1X = muteX + ( buttonPositionColumn*buttonReferentMeasure );
  loop1Y = muteY;
  //
    // Stop - (W.I.P) ---------------------------
  //
  buttonPositionColumn = 2;
  stopX = playX1 - ( buttonPositionColumn*buttonReferentMeasure + space*2 );
  stopY = pauseY1;
  //
    // Loop Playlist - (W.I.P) ------------------
  //
  buttonPositionColumn = 3;
  loopPlaylistX = playX1 + ( buttonPositionColumn*buttonReferentMeasure );
  loopPlaylistY = playY1;
  //
    // Shuffle - (W.I.P) -----------------------
  //
  buttonPositionColumn = 1;
  shuffleX = playX1 + ( buttonPositionColumn*buttonReferentMeasure + space );
  shuffleY = muteY;
} //End setup
//
void draw() {
  //
  /*Note: draw the pause button first, in the middle
   All other buttons are drawn around it
   All pseudocode starts like rect( X, Y, Width, Height )
   */
  //
  //Confirming Local Variable Center X & Y garbage collected from setup()
  //print("Confirming Center X:", centerX);
  //println("/t Confirming Center Y:", centerY);
  //
  //Button Space
  //rect( spaceX, spaceY, spaceWidth, buttonSide );
  //
  //Stop Button
  //rect( stopX, stopY, buttonSide, buttonSide ); //Layout????
  //rect( stopX1, stopY1, buttonSide, buttonSide ); //Square shape
  //
  //Pause Button
  //rect( pauseX1, pauseY1, buttonSide, buttonSide ); //Layout
  rect( pauseX1, pauseY1, pauseWidth, buttonSide );
  rect( pauseX2, pauseY2, pauseWidth, buttonSide );
  //
  //Play Button
  rect( playX1, playY1, buttonSide, buttonSide ); //Layout
  triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
  //
  //MUTE Button
  rect( muteX, muteY, buttonSide, buttonSide ); //Layout
  //Students to develop
  //
  //Fast Forward in the Song
  //rect( ffX1A, ffY1A, buttonSide, buttonSide ); //Layout
  triangle( ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A );
  triangle( ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B );
  //
  //Reverse in the Song
  //rect( rrX, rrY1A, buttonSide, buttonSide ); //Layout
  triangle( rrX1A, rrY1A, rrX2A, rrY2A, rrX3A, rrY3A );
  triangle( rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B );
  //
  //Next Button, skip file
  //rect( nextX, nextY, buttonSide, buttonSide ); //Layout
  triangle( nextX1, nextY1, nextX2, nextY2, nextX3, nextY3 );
  rect( nextXR2, nextYR2, nextWidth, buttonSide );
  //
  //Previous Button
  //rect( prevX, prevY, buttonSide, buttonSide ); //Layout
  triangle( prevX1, prevY1, prevX2, prevY2, prevX3, prevY3 );
  rect( prevXR, prevYR, prevWidth, buttonSide );
  //
  //Loop the Song Once
  //Students to Develop
  rect( loop1X, loop1Y, buttonSide, buttonSide ); //Layout
  //ellipse( loop1X, loop1Y, loop1WidthDiameter, loop1HeightDiameter );
  //ellipse( loop1X, loop1Y, loop1WidthDiameter, loop1HeightDiameter );
  //triangle( loop1X1, loop1Y1, loop1X2, loop1Y2, loop1X3, loop1Y3 );
  //
  //Loop the Song Infinitely
  //Students to Develop
  rect( loopIX, loopIY, buttonSide, buttonSide ); //Layout
  //ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
  //ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
  //triangle( loopIX1, loopIY1, loopIX2, loopIY2, loopIX3, loopIY3 );
  //
  //Loop the Playlist (infinitely)
  //Students to Develop
  rect( loopPlaylistX, loopPlaylistY, buttonSide, buttonSide ); //Layout
  //ellipse( loopPlaylistX, loopPlaylistY, loopPlaylistWidthDiameter, loopPlaylistHeightDiameter );
  //ellipse( loopPlaylistX, loopPlaylistY, loopPlaylistWidthDiameter, loopPlaylistHeightDiameter );
  //triangle( loopPlaylistX1, loopPlaylistY1, loopPlaylistX2, loopPlaylistY2, loopPlaylistX3, loopPlaylistY3 );
  //
  //OPTINAL Shuffle
  rect( shuffleX, shuffleY, buttonSide, buttonSide ); //Layout
  //2-D Shapes
  //
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
