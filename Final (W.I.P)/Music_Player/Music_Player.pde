import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
// Pre-array: AudioPlayer song0, song1, song2, song3, song4, song5, song6, song7;
int numberOfSongs = 7;
AudioPlayer[] songs = new AudioPlayer[numberOfSongs]; //Play List Data Structure
// Pre-array: AudioPlayer soundEffect0, soundEffect1;
int numberOfSoundEffects = 2;
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
//
int time = 7000;
//
Boolean activateWindow=false, autoPlayON=false;
//
void Setup2() {
  SetupOthers();
  loadMusic();
  Vbuttons();
  //loadUI();
  //
} //End setup
//
//
void draw() {
  LoadOthers();
  Function();
  //TextDraw();
  loadbuttons();
  loadAllText();
}//End draw
//
void keyPressed() {
  //
  //Play sound effect when pressing a key, including delay
  soundEffects[0].play();
  soundEffects[0].rewind();
  delay(2100); //milliseconds read from draw() println() debugging
  //println( "KeyPrekssed:", soundEffect0.length() );
  //
  keyPressedShortCuts();
  //
} //End keyPressed
//
void mousePressed() {
  ButtonCheck();
  if ( activateWindow==false ) activateWindow = true;
} //End mousePressed
//
//End MAIN Program
