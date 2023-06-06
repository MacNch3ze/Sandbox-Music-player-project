color PauseTint, AutoPlayTint, StopTint, MuteTint;
color FFTint, RRTint, NextTint, PreviousTint;
color Loop1Tint, LoopITint, LoopPlayListTint, ShuffleTint;
color Highlight;
float w;
boolean PauseOver = false;
boolean AutoPlayOver = false;
boolean StopOver = false;
boolean MuteOver = false;
boolean LoopIOver = false;
boolean FFOver = false;
boolean RROver = false;
boolean NextOver = false;
boolean PreviousOver = false;
boolean Loop1Over = false;
boolean LoopPlaylistOver = false;
boolean ShuffleOver = false;
void Function() {
  Highlight = color(51);
  w = buttonReferentMeasure;
  //
  //Pause T
  if( mouseX > pauseX1 && mouseX < pauseX1 + w && mouseY > pauseY1 && mouseY < pauseY1 + w ) {
    PauseOver = true;
    //println("On Pause");
    PauseTint = Highlight;
  } else {
      PauseOver = false;
      PauseTint = ButtonImageColor;
  }
  //
  //Auto Play T
  if( mouseX > playX1 && mouseX < playX1 + w && mouseY > playY1 && mouseY < playY1 + w ) {
    AutoPlayOver = true;
    AutoPlayTint = Highlight;
  } else {
      AutoPlayOver = false;
      AutoPlayTint = ButtonImageColor;
  }
  // 
  //Stop T
/*  if( mouseX > stopX && mouseX < stopX + w && mouseY > stopY && mouseY < stopY + w ) {
    StopOver = true;
    StopTint = Highlight;
  } else {
      StopOver = false;
      StopTint = ButtonImageColor;
  }
  // */
  //Mute T
  if( mouseX > muteX && mouseX < muteX + w && mouseY > muteY && mouseY < muteY + w ) {
    MuteOver = true;
    MuteTint = Highlight;
  } else {
      MuteOver = false;
      MuteTint = ButtonImageColor;
  }
  //
  //Loop
  if( mouseX > loopIX && mouseX < loopIX + w && mouseY > loopIY && mouseY < loopIY + w ) {
    LoopIOver = true;
    LoopITint = Highlight;
  } else {
      LoopIOver = false;
      LoopITint = ButtonImageColor;
  }
  //
  //Fast Forward T
  if( mouseX > ffX1A && mouseX < ffX1A + w && mouseY > ffY1A && mouseY < ffY1A + w ) {
    FFOver = true;
    FFTint = Highlight;
  } else {
      FFOver = false;
      FFTint = ButtonImageColor;
  }
  //
  //Rewind T
  if( mouseX > rrX1AOL && mouseX < rrX1AOL + w && mouseY > rrY1AOL && mouseY < rrY1AOL + w ) {
    RROver = true;
    RRTint = Highlight;
  } else {
      RROver = false;
      RRTint = ButtonImageColor;
  }
  //
  //Next T
  if( mouseX > nextX1 && mouseX < nextX1 + w && mouseY > nextY1 && mouseY < nextY1 + w ) {
    NextOver = true;
    NextTint = Highlight;
  } else {
      NextOver = false;
      NextTint = ButtonImageColor;
  }
  //
  //Previous T
  if( mouseX > prevXOL && mouseX < prevXOL + w && mouseY > prevYOL && mouseY < prevYOL + w ) {
    PreviousOver = true;
    PreviousTint = Highlight;
  } else {
      PreviousOver = false;
      PreviousTint = ButtonImageColor;
  }
  //
  //Loop1 T
  if( mouseX > loop1X && mouseX < loop1X + w && mouseY > loop1Y && mouseY < loop1Y + w ) {
    Loop1Over = true;
    Loop1Tint = Highlight;
  } else {
      Loop1Over = false;
      Loop1Tint = ButtonImageColor;
  }
  //
  //Loop Playlist T
  if( mouseX > loopPlaylistX && mouseX < loopPlaylistX + w && mouseY > loopPlaylistY && mouseY < loopPlaylistY + w ) {
    LoopPlaylistOver = true;
    LoopPlayListTint = Highlight;
  } else {
      LoopPlaylistOver = false;
      LoopPlayListTint = ButtonImageColor;
  }
  //
  //Shuffle T
  if( mouseX > shuffleX && mouseX < shuffleX + w && mouseY > shuffleY && mouseY < shuffleY + w ) {
    ShuffleOver = true;
    ShuffleTint = Highlight;
  } else {
      ShuffleOver = false;
      ShuffleTint = ButtonImageColor;
  }
}//End Functions
//
void ButtonCheck() {
  if (PauseOver) playPause();
  if (AutoPlayOver) autoPlay();
//if (StopOver) stopSong();
  if (MuteOver) mute();
  if (LoopIOver) loopSong();
  if (FFOver) fastForward();
  if (RROver) Rewind();
  if (NextOver) nextSong();
  if (PreviousOver) previousSong();
  if (Loop1Over) Loop1();
  if (LoopPlaylistOver) loopPlaylist();  
  if (ShuffleOver) shuffleSong();
}//Button Check
//
