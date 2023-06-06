//Global Variables
float buttonReferentMeasure, Center, OLWidth, OLspace;
float ControlZoneY, ControlZoneX, InfoBoxX, InfoBoxY, lesserZoneWidth, lesserZoneWidth2, ZoneWidth ;
float buttonSide, spaceWidth, spaceHeight;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseX1OL, pauseY1OL, pauseWidth;
float playX1, playY1, playX2, playY2, playX3, playY3, playX1OL, playY1OL;
float stopX, stopY, muteX, muteY, loopIX, loopIY, loopIXOL, loopIYOL, muteXOL, muteYOL;
float ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A, ffX1AOL, ffY1AOL;
float ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B;
float rrX1A, rrY1A, rrX2A, rrY2A, rrX3A, rrY3A, rrX1AOL, rrY1AOL;
float rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B;
float nextX1, nextY1, nextX2, nextY2, nextX3, nextY3, nextXR2, nextYR2, nextWidth, nextXOL, nextYOL;
float prevX1, prevY1, prevX2, prevY2, prevX3, prevY3, prevXR, prevYR, prevWidth, prevXOL, prevYOL;
float rrX, rrY, nextX, nextY, prevX, prevY, loop1X, loop1Y, loop1XOL, loop1YOL;
float loopPlaylistX, loopPlaylistY, loopPlaylistXOL, loopPlaylistYOL;
float shuffleX, shuffleY, shuffleXOL, shuffleYOL;
float space;
//
void Vbuttons() {
  //Function();
  //
  //Variables
  //Population: visual data 
  buttonReferentMeasure = width * 1/17;
  buttonSide = buttonReferentMeasure;
  spaceWidth = buttonReferentMeasure * 1/4;
  space = buttonReferentMeasure * 4/3;
  OLWidth = ( buttonReferentMeasure*4/3 );
  OLspace = ( OLWidth*3/4 );
  //
  float centerX = (width * 5/11 ) * 1/2; //Local Variable, garbage collected at end of setup(), see println in draw()
  float centerY = height * 3/5;
  //print("Confirming Center X:", centerX);
  //println("\t Confirming Center Y:", centerY); //Illstrates a character escape
  //
    // Frame ---------------------------------------
  //
  pauseX1OL = centerX - ( OLWidth*1/2 ) ;
  pauseY1OL = centerY - ( OLWidth*1/2 ) ;
  playX1OL = pauseX1OL ;
  playY1OL = pauseY1OL + ( OLWidth + OLspace ) ;
  muteXOL = pauseX1OL ;
  muteYOL = pauseY1OL - ( OLWidth + OLspace ) ;
  loopIXOL = pauseX1OL + ( OLWidth + OLspace )*2 ;
  loopIYOL = pauseY1OL ;
  ffX1AOL = pauseX1OL + ( OLWidth + OLspace );
  ffY1AOL = pauseY1OL ;
  rrX1AOL = pauseX1OL - ( OLWidth + OLspace ) ;
  rrY1AOL = pauseY1OL ;
  nextXOL = ffX1AOL ;
  nextYOL = playY1OL ;
  prevXOL = rrX1AOL ;
  prevYOL = playY1OL ;
  loop1XOL = loopIXOL ;
  loop1YOL = muteYOL ;
  loopPlaylistXOL = loopIXOL ;
  loopPlaylistYOL = playY1OL ;
  shuffleXOL = ffX1AOL ;
  shuffleYOL = muteYOL ;
  //
    // Pause / play --------------------------------
  //
  pauseX1 = ( centerX - buttonReferentMeasure*1/2 );
  pauseY1 = ( centerY - buttonReferentMeasure*1/2 );
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
    // Zones ---------------------------------
  //
  ControlZoneY = 0;
  ControlZoneX = 0;
  ZoneWidth = width * 3/5;
  InfoBoxX = width * 3/5;
  InfoBoxY = 0;
  lesserZoneWidth = width * 2/5 ;
  lesserZoneWidth2 = width * 3/10 ;
  //
    // Mute - (W.I.P) ------------------------------
  //
  muteX = pauseX1;
  muteY = pauseY1 - ( buttonReferentMeasure + space );
  //
    // Loop Indefinitely - (W.I.P) -----------------
  //
  loopIX = pauseX1 + ( buttonReferentMeasure*2 + space*2 );
  loopIY = pauseY1 ;
  //
    // Fast-Forward --------------------------------
  //
  ffX1A = pauseX1 + ( buttonReferentMeasure + space );
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
  rrX1A = pauseX1 - space;
  rrY1A = pauseY1;
  //
  rrX3A = rrX1A;
  rrY3A = rrY1A + buttonReferentMeasure;
  rrX2A = rrX1A - buttonReferentMeasure*1/2;
  rrY2A = rrY1A + ( rrY3A - rrY1A )*1/2;
  rrX1B = rrX2A;
  rrY1B = rrY1A;
  rrX2B = rrX2A - buttonReferentMeasure*1/2;
  rrY2B = rrY2A;
  rrX3B = rrX2A;
  rrY3B = rrY3A;
  //
    // Next Song ----------------------------------
  //
  nextX = playX1 + buttonReferentMeasure + space ;
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
  prevX = playX1 - ( buttonReferentMeasure + space );
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
  loop1X = muteX + (buttonReferentMeasure*2 + space*2) ;
  loop1Y = muteY ;
  //
    // Stop - (W.I.P) ---------------------------
  //
  stopX = playX1 - ( buttonReferentMeasure + space )*2;
  stopY = pauseY1;
  //
    // Loop Playlist - (W.I.P) ------------------
  //
  loopPlaylistX = playX1 + ( buttonReferentMeasure*2 + space*2 );
  loopPlaylistY = playY1;
  //
    // Shuffle - (W.I.P) -----------------------
  //
  shuffleX = muteX + ( buttonReferentMeasure + space );
  shuffleY = muteY;
  //
  /*Note: draw the pause button first, in the middle
   All other buttons are drawn around it
   All pseudocode starts like rect( X, Y, Width, Height )
   */
}//
//
void loadbuttons() {
  //Confirming Local Variable Center X & Y garbage collected from setup()
  //print("Confirming Center X:", centerX);
  //println("/t Confirming Center Y:", centerY);
  //
  //Load Zones
  loadUI();
  //
  //Frames
  stroke( #620400 );
  fill( #000000 );
  rect( playX1OL, playY1OL, OLWidth, OLWidth );
  rect( pauseX1OL, pauseY1OL, OLWidth, OLWidth );
  rect( muteXOL, muteYOL, OLWidth, OLWidth );
  rect( loopIXOL, loopIYOL, OLWidth, OLWidth );
  rect( ffX1AOL, ffY1AOL, OLWidth, OLWidth );
  rect( rrX1AOL, rrY1AOL, OLWidth, OLWidth );
  rect( nextXOL, nextYOL, OLWidth, OLWidth );
  rect( prevXOL, prevYOL, OLWidth, OLWidth );
  rect( loop1XOL, loop1YOL, OLWidth, OLWidth );
  rect( loopPlaylistXOL, loopPlaylistYOL, OLWidth, OLWidth );
  rect( shuffleXOL, shuffleYOL, OLWidth, OLWidth );
  fill( resetWhiteInk );
  stroke( #FFFFFF );
  //
  //Button Space
  //rect( spaceX, spaceY, spaceWidth, buttonSide );
  //
  stroke( #5f605f );
  fill( #620400 );
  //Stop Button
  //fill( StopTint );
  //rect( stopX, stopY, buttonSide, buttonSide ); //Layout????
  //rect( stopX1, stopY1, buttonSide, buttonSide ); //Square shape
  //fill( ButtonImageColor );
  //
  //Pause Button
  fill( PauseTint );
  //rect( pauseX1, pauseY1, buttonSide, buttonSide ); //Layout
  rect( pauseX1, pauseY1, pauseWidth, buttonSide );
  rect( pauseX2, pauseY2, pauseWidth, buttonSide );
  fill( ButtonImageColor );
  //
  //Play Button
  fill( AutoPlayTint );
  //rect( playX1, playY1, buttonSide, buttonSide ); //Layout
  triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
  fill( ButtonImageColor );
  //
  //MUTE Button
  fill( MuteTint );
  rect( muteX, muteY, buttonSide, buttonSide ); //Layout
  fill( ButtonImageColor );
  //Students to develop
  //
  //Fast Forward in the Song
  fill( FFTint );
  //rect( ffX1A, ffY1A, buttonSide, buttonSide ); //Layout
  triangle( ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A );
  triangle( ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B );
  fill( ButtonImageColor );
  //
  //Reverse in the Song
  fill( RRTint );
  //rect( rrX1A, rrY1A, buttonSide, buttonSide ); //Layout
  triangle( rrX1A, rrY1A, rrX2A, rrY2A, rrX3A, rrY3A );
  triangle( rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B );
  fill( ButtonImageColor );
  //
  //Next Button, skip file
  fill( NextTint );
  //rect( nextX, nextY, buttonSide, buttonSide ); //Layout
  triangle( nextX1, nextY1, nextX2, nextY2, nextX3, nextY3 );
  rect( nextXR2, nextYR2, nextWidth, buttonSide );
  fill( ButtonImageColor );
  //
  //Previous Button
  fill( PreviousTint );
  //rect( prevX, prevY, buttonSide, buttonSide ); //Layout
  triangle( prevX1, prevY1, prevX2, prevY2, prevX3, prevY3 );
  rect( prevXR, prevYR, prevWidth, buttonSide );
  fill( ButtonImageColor );
  //
  //Loop the Song Once
  //Students to Develop
  fill( Loop1Tint );
  rect( loop1X, loop1Y, buttonSide, buttonSide ); //Layout
  //ellipse( loop1X, loop1Y, loop1WidthDiameter, loop1HeightDiameter );
  //ellipse( loop1X, loop1Y, loop1WidthDiameter, loop1HeightDiameter );
  //triangle( loop1X1, loop1Y1, loop1X2, loop1Y2, loop1X3, loop1Y3 );
  fill( ButtonImageColor );
  //
  //Loop the Song Infinitely
  //Students to Develop
  fill( LoopITint );
  rect( loopIX, loopIY, buttonSide, buttonSide ); //Layout
  //ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
  //ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
  //triangle( loopIX1, loopIY1, loopIX2, loopIY2, loopIX3, loopIY3 );
  fill( ButtonImageColor );
  //
  //Loop the Playlist (infinitely)
  //Students to Develop
  fill( LoopPlayListTint );
  rect( loopPlaylistX, loopPlaylistY, buttonSide, buttonSide ); //Layout
  //ellipse( loopPlaylistX, loopPlaylistY, loopPlaylistWidthDiameter, loopPlaylistHeightDiameter );
  //ellipse( loopPlaylistX, loopPlaylistY, loopPlaylistWidthDiameter, loopPlaylistHeightDiameter );
  //triangle( loopPlaylistX1, loopPlaylistY1, loopPlaylistX2, loopPlaylistY2, loopPlaylistX3, loopPlaylistY3 );
  fill( ButtonImageColor );
  //
  //OPTINAL Shuffle
  fill( ShuffleTint );
  rect( shuffleX, shuffleY, buttonSide, buttonSide ); //Layout
  fill( ButtonImageColor );
  fill(resetBlackInk);
  //2-D Shapes
  //
}//End loadbuttons
