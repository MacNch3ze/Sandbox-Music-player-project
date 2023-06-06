void SetupOthers () {
  if (PermText) {
  PermTextSetup();
  } else { 
    TextDraw();
  }
}//End SetupOthers
void LoadOthers () {
  if (RandomStart) {
  int currentSong = int ( random( numberOfSongs-1 ) ); //Starts playlist from random song
  } else { 
    int currentSong = int ( 0 );
  }
}//End LoadOthers
void loadUI() {
  //Zone - Control
  fill( GUIcolor );
  rect( ControlZoneX, ControlZoneY, ZoneWidth, ZoneWidth );
  fill(resetWhiteInk);
  //
  //Zone - Info
  fill( GUIcolor );
  rect( InfoBoxX, InfoBoxY, lesserZoneWidth, lesserZoneWidth2);
fill(resetWhiteInk);
  //
  //Zone - Playlist
  fill( GUIcolor );
  rect( InfoBoxX, lesserZoneWidth2, lesserZoneWidth, lesserZoneWidth2 );
  fill(resetWhiteInk);
  //

}//End loadUI
//
