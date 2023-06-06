void keyPressedShortCuts() {
  musicShortCuts();
  quitButtons();
  //
}//End keyPressedShortCuts
//
void musicShortCuts() {
  //Key Board Short Cuts for Music, use numbers
  //Hint: notice human numbering vs. computer numbering9
  //Note: if(key=='1')song0.loop(0); will change to array & index introduction
  if ( key == '1' ) songs[0].loop(0); //.rewind() is included in .loop()
  if ( key == '2' ) songs[1].loop(0);
  if ( key == '3' ) songs[2].loop(0);
  if ( key == '4' ) songs[3].loop(0);
  if ( key == '5' ) songs[4].loop(0);
  if ( key == '6' ) songs[5].loop(0);
  if ( key == '7' ) songs[6].loop(0);
  //
  //Students to make these smarter
  //Separated into single songs and multiple songs
  //
  if ( key == 'U' || key=='u' ) autoPlay(); //psuedo code only
  if ( key == 'P' || key=='p' ) playPause(); //teacher started
  if ( key == 'M' || key=='m' ) mute(); //teacher started
  if ( key == 'S' || key=='s' ) stopSong(); //teacher started
  if ( key == 'F' || key=='f' ) fastForward(); //teacher started
  if ( key == 'R' || key=='r' ) Rewind(); //teacher started
  if ( key == 'N' || key=='n' ) nextSong(); //psuedo code only
  if ( key == 'B' || key=='b' ) previousSong(); //psuedo code only
  if ( key == 'L' || key=='l' ) loopSong(); //loops current song infinitely
  if ( key == 'O' || key=='o' ) loopPlaylist(); //entire playlist
  if ( key == 'W' || key=='w' ) shuffleSong(); //shuffle
  if ( key == 'E' || key=='e' ) Loop1(); //Loop and Shuffle
}//End musicShortCuts
//

//End Key Board Short Cuts Sub Program
