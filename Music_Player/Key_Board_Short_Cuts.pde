void keyPressedShortCuts() {
  //
  musicShortCuts();
  quitButton();
  //
}//End keyPressedShortCuts
//
void musicShortCuts() {
  //
  if ( key == '1' ) song0.loop(0); //.rewind is included in .loop()
  if ( key == '2' ) song1.loop(0);
  if ( key == '3' ) song2.loop(0);
  if ( key == '4' ) song3.loop(0);
  if ( key == '5' ) song4.loop(0);
  if ( key == '6' ) song5.loop(0);
  if ( key == '7' ) song6.loop(0);
  if ( key == '8' ) song7.loop(0);
  //
}//End keyPressedShortcuts
//
void quitButton() {
  //Quit Button Key Board Shortcuts
  if ( key == 'Q' || key == 'q' ) {
  }
  if ( key == CODED && keyCode == ESC ) {
    quitButtonCode();
  }//End Quit Buttons
}//End quitButton
//
void quitButtonCode() {
    soundEffect0.loop(0); //only need partial file, use .play(int millis)
    //Visual Image or Text of Goodbye
    delay(3000); //alternate way of playing sound once
    exit();
}//End quitBuutonCode
//End Key Board Short Cuts Sub Program
