void quitButtons() {
  //Quit Button Key Board Shortcuts
  if ( key == 'Q' || key == 'q' ) {
    quitButtonCode();
  }
  if ( key == CODED && keyCode == ESC ) {
    quitButtonCode();
  }//End Quit Buttons
}//End quitButtons
//
void quitButtonCode() {
  soundEffects[1].loop(0); //only need partial file, use .play(int millis)
  //Visual Image or Text of Goodbye
  delay(3000); //alternate way of playing sound once
  exit();
}//End quitButtonCode
//
/* Note: must define a difference between auto play and loop playlist
 */
void autoPlay() {
  //Note: plays one song, then the next automatically
  //Asks the computer if a song is playing, continually
  //When current song finishes, it rewinds current song and plays the next song
  //
  /*ERROR: autoplay never stops the song if it is enabled
   - once the song stops, or by pressing STOP
   - next song will start
   - might even start the next song at the same time as the current song
   */
  if ( autoPlayON==false ) {
    autoPlayON=true;
  } else {
    autoPlayON=false;
    songs[currentSong].pause(); //enables play to continue when auto play is turned off
    //songs[currentSong].rewind();
  }
}//End AutoPlay
void autoPlayMusic() {
  //ERROR: ArrayListOutOfBounds
  if ( songs[currentSong].isPlaying()==false ) {
    currentSong++;
    songs[currentSong].play();
  }
}//End Auto Play Music
//
void playPause()
{
  //Ask computer if the song is playing
  //Note: remember to use Auto Play
  //ERROR: song will not play if at the end
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*4/5 ) { //80% of the song
    songs[currentSong].rewind();
    songs[currentSong].play();
    //Remember, Auto Play is better b/c it plays the next song
  } else {
    //autoPlay(), is better here
    songs[currentSong].play(); //Interim solution
  }
}//End Play Pause
//
void mute()
{
  //MUTE, not PAUSE, only affects the speakers
  //Based on a question: is the song muted
  //ERROR: this MUTE Button only works when the song is playing
  //ERROR: user will spam mute if song is at end of file
  if ( songs[currentSong].isMuted() ) {
    songs[currentSong].unmute();
  } else if ( songs[currentSong].isMuted() && songs[currentSong].position() >= songs[currentSong].length()*4/5 ) {
    songs[currentSong].rewind(); //one solution
    songs[currentSong].unmute();
    //
    /* Other solutions
     - unmute the next song
     - show notification speakers are muted and song will not play
     */
  } else {
    songs[currentSong].mute(); //simple solution, contains two ERRORS, see above
  }
}//End Mute
//
void stopSong()
{
  //Based on a question: is the song playing
  //Hint: would this fix the ERROR of the MUTE Button
  //Note: STOP is actually afancy rewind, no ERRORS
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
  } else {
    songs[currentSong].rewind();
  }
}//End Stop Song
//
void fastForward() {
  //Asks comptuer if the song is playing
  if ( songs[currentSong].isPlaying() ) songs[currentSong].skip(1000); //parameter in milliseconds
}//End Fast Forward
//
void Rewind() {
  if ( songs[currentSong].isPlaying() ) songs[currentSong].skip(-1000); //parameter in milliseconds
}//End Fast Rewind
//
void nextSong() {
  //ERROR: ArrayListOutOfBounds
  //ERROR: currentSong++; plays two songs or more at once
  if ( songs[currentSong].isPlaying() ) {
    //Students to finish
    //Current Song: .pause(), .rewind()
    //Next Song: currentSong++
    //Now: DELAY-1-Second, .play()
  } else if (currentSong >= songs.length-1 ) {
    currentSong = 0;
  } else {
    songs[currentSong].rewind();
    currentSong++;
  }
}//End Next Song
//
void previousSong() {
  //ERROR: ArrayListOutOfBounds
  currentSong--;
}//End Previous Song
//
void loopSong() {
}//End Loop Song
//
void loopPlaylist() {
}//End Loop the Playlist
//
void Loop1() {
}//End Shuffle the Playlist()
//
void shuffleSong() {
  //Student to finish
  //Hint: random() and casting, see Global Variables' currentSong declaration
}//End Loop And Shuffle
//

//End Key Board Short Cuts Sub Program