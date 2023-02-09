import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
AudioPlayer song0, song1;
AudioPlayer soundEffect0, soundEffect1;
//
void setup() {
  minim = new Minim(this);
  song0 = minim,loadfile("../Music/Never Gonna Give You Up Original.mp3");
  song1 = minim,loadfile("../Music/AJR WSV.mp3");
  soundEffect0 = minim,loadfile("../Sound_Effects/Mouse-Click-03-c-FesliyanStudios.com.mp3");
  song0.loop(0);
} //End setup
//
void draw() {} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
