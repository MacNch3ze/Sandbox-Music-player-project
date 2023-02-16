import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
AudioPlayer song0, song1, song2, song3, song4, song5, song6, song7;
AudioPlayer soundEffect0, soundEffect1;
//
boolean activateWindow=false;
//
void setup() {
  size (550, 750);
  loadMusic();
  song0.loop(0);
  soundEffect1.loop(0);
} //End setup
//
void draw() {
  if ( activateWindow == true ) background(0);
  //
  //println ( soundEffect0.position(), soundEffect0.length() );
  //println ("When does the sound stop? Indicates delay");
  //println( soundEffect1.position(), soundEffect0.length() );
  //
} //End draw
//
void keyPressed() {
  //
  //Play sound effect when pressing a key, including delay
  soundEffect0.play();
  soundEffect0.rewind();
  delay(4000); //milliseconds read from draw() println() debugging
  //println( "KeyPrekssed:", soundEffect0.length() );
  //
  keyPressedShortCuts();
  //
} //End keyPressed
//
void mousePressed() {
  if ( activateWindow==false ) activateWindow = true;
} //End mousePressed
//
//End MAIN Program
