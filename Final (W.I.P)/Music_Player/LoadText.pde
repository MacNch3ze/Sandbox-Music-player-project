//Global Variables
float TextX1, TextX2, TextX3, TextX4, TextWidth;
float TextY1, TextY2, TextY3, TextHeight;
//
PFont font;
boolean TextOn = false;
color resetWhiteInk=#FFFFFF, resetBlackInk=#000000;
String OnText ;
String string1 = " Pause";
String string2 = " AutoPlay";
String string3 = " Stop";
String string4 = " Mute";
String string5 = " loop";
String string6 = " Jump";
String string7 = " Rewind";
String string8 = " Next";
String string9 = " Previous";
String string10 = " Replay";
String string11 = " Looplist";
String string12 = " Shuffle";
//
void PermTextSetup() {
  //
  font = createFont ("Harrington", 55);
  //
  TextY1 = muteYOL;
  TextY2 = pauseY1OL;
  TextY3 = playY1OL;
  TextHeight = ( OLWidth*2 );
  //
  TextX1 = rrX1AOL;
  TextX2 = pauseX1OL;
  TextX3 = ffX1AOL;
  TextX4 = loopIXOL;
  TextWidth = OLWidth;
}//End TextSetup
void loadAllText() {
  textdraw1(); //Pause
  textdraw2(); //AutoPlay
  //textdraw3(); //Stop
  textdraw4(); //Mute
  textdraw5(); //LoopI
  textdraw6(); //FastForward
  textdraw7(); //Rewind
  textdraw8(); //Next
  textdraw9(); //Previous
  textdraw10(); //Loop( 1 )
  textdraw11(); //LoopPlaylist
  textdraw12(); //Shuffle
}//End loadAllText
void preTextDraw() { //EXECUTED Code applied to all textDraw's
  fill(TextColor); //Ink, hexidecimal copied from Color Selector
  textAlign (LEFT, CENTER); //Align X&Y, see Processing.org / Reference
  //Horiztonal Values (X): [LEFT | CENTER | RIGHT]
  //Vertical Values (Y): [TOP | CENTER | BOTTOM | BASELINE]
  textFont(font, height); //Change the number until it fits, largest font size
  textSize( 10 ); //Change the number until it fits, largest font size
}//End Pre Text Draw
    // -----------------------------
  //
  //Pause
void textdraw1() {
  preTextDraw();
  text(string1, TextX2, TextY2, TextWidth, TextHeight);
  textSize( 18 );
  fill(resetWhiteInk);
}//End textdraw1
  //
  //AutoPlay
void textdraw2() {
  preTextDraw();
  text(string2, TextX2, TextY3, TextWidth, TextHeight);
  textSize( 15 );
  fill(resetWhiteInk);
}//End textdraw2
  //
  //Stop
/*void textdraw3() {
  preTextDraw();
  text(string3, TextX1, TextY1, TextWidth, TextHeight);
  textSize( 18 );
  fill(resetWhiteInk);
}/End textdraw3 */
  //
  //Mute
void textdraw4() {
  preTextDraw();
  text(string4, TextX2, TextY1, TextWidth, TextHeight);
  textSize( 18 );
  fill(resetWhiteInk);
}//End textdraw4
  //
  //LoopI
void textdraw5() {
  preTextDraw();
  text(string5, TextX4, TextY2, TextWidth, TextHeight);
  textSize( 18 );
  fill(resetWhiteInk);
}//End textdraw5
  //
  //FastForward
void textdraw6() {
  preTextDraw();
  text(string6, TextX3, TextY2, TextWidth, TextHeight);
  textSize( 18 );
  fill(resetWhiteInk);
}//End textdraw6
  //
  //Rewind
void textdraw7() {
  preTextDraw();
  text(string7, TextX1, TextY2, TextWidth, TextHeight);
  textSize( 18 );
  fill(resetWhiteInk);
}//End textdraw7
  //
  //Next
void textdraw8() {
  preTextDraw();
  text(string8, TextX3, TextY3, TextWidth, TextHeight);
  textSize( 18 );
  fill(resetWhiteInk);
}//End textdraw8
  //
  //Previous
void textdraw9() {
  preTextDraw();
  text(string9, TextX1, TextY3, TextWidth, TextHeight);
  textSize( 18 );
  fill(resetWhiteInk);
}//End textdraw9
  //
  //Loop(1)
void textdraw10() {
  preTextDraw();
  text(string10, TextX4, TextY1, TextWidth, TextHeight);
  textSize( 18 );
  fill(resetWhiteInk);
}//End textdraw10
  //
  //LoopPlaylist
void textdraw11() {
  preTextDraw();
  text(string11, TextX4, TextY3, TextWidth, TextHeight);
  textSize( 18 );
  fill(resetWhiteInk);
}//End textdraw11
  //
  //Shuffle
void textdraw12() {
  preTextDraw();
  text(string12, TextX3, TextY1, TextWidth, TextHeight);
  textSize( 18 );
  fill(resetWhiteInk);
}//End textdraw12
//
//End Text Subprogram
