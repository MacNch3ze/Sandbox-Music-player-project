void TextDraw() {
  //
  font = createFont ("Serif", 55);
  //
  TextHeight = ( OLWidth*2 );
  TextWidth = ( OLWidth*3 );
  //
  if (PauseOver) { 
    TextOn = true;
    OnText = string1;
  }
//
  if (AutoPlayOver) {
    TextOn = true;
    OnText = string2;
  }
//
  /* if (StopOver) {
    TextOn = true;
    OnText = string3;
  } */
//
  if (MuteOver) { 
    TextOn = true;
    OnText = string4;
  }
//
  if (LoopIOver) {
    TextOn = true;
    OnText = string5;
  }
//
  if (FFOver) { 
    TextOn = true;
    OnText = string6;
  }
//
  if (RROver) { 
    TextOn = true;
    OnText = string7;
  }
//
  if (NextOver) { 
    TextOn = true;
    OnText = string8;
  }
//
  if (PreviousOver) { 
    TextOn = true;
    OnText = string9;
  }
//
  if (Loop1Over) {
    TextOn = true;
  OnText = string10;
  }
//
  if (LoopPlaylistOver) {
    TextOn = true;
    OnText = string11;
  }
//
  if (ShuffleOver) { 
    TextOn = true;
    OnText = string12;
  }
//
  if (PauseOver || AutoPlayOver || StopOver || MuteOver || LoopIOver || FFOver || RROver || NextOver || PreviousOver || Loop1Over || LoopPlaylistOver || ShuffleOver) {
  } else {
    TextOn = false;
    }
  //
}//TextSetup
//
void preTextDraw() { //EXECUTED Code applied to all textDraw's
  fill(TextColor); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, TOP); //Align X&Y, see Processing.org / Reference
  //Horiztonal Values (X): [LEFT | CENTER | RIGHT]
  //Vertical Values (Y): [TOP | CENTER | BOTTOM | BASELINE]
  textFont(font, height); //Change the number until it fits, largest font size
  textSize( Textsize ); //Change the number until it fits, largest font size
}//End preTextDraw
//
//Load Text 
 void loadAllText() {
  if (TextOn) {
  preTextDraw();
  fill(resetWhiteInk);
  rect(mouseX, mouseY, TextWidth*3/4, TextHeight*6/20);
  fill(resetBlackInk);
  text(OnText, mouseX-TextWidth*1/7, mouseY, TextWidth, TextHeight*1/2);
  textSize( 20 );
  fill(resetWhiteInk);
  //println("its checking");
  }
}//End loadAllText
//
