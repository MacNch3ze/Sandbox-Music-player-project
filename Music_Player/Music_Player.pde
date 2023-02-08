import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
AudioPlayer song;
//
void setup() {
   minim = new Minim(this);
   song = minim,loadfile("../Never Gonna Give You Up Original.mp3");
   song.loop(0);
} //End setup
//
void draw() {} //End draw
//
void keyPressed() {} //End keypreesed
//
void mousePressed() {} //End mousepressed
//
//End Main Program
