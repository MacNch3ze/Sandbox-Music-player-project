void loadMusic() {
  //
  minim = new Minim(this);
  //
  //Concatenation of Pathway + File Name
  String musicPathway = "../Music/"; // From Sketch to Music File
  String soundEffectPathway = "../Sound_Effects/"; //From Sketch to sound Effect folder
  String grooveFileName = "groove.mp3";
  String The_SimplestFileName = "The_Simplest.mp3";
  String Start_Your_EnginesFileName = "Start_Your_Engines.mp3";
  String NewsroomFileName = "Newsroom.mp3";
  String Ghost_WalkFileName = "Ghost_Walk.mp3";
  String EurekaFileName = "Eureka.mp";
  String AJR_WSVFileName = "AJR WSV.mp3";
  String NGGYUOFileName = "Never Gonna Give You Up Original.mp3";
  String StopFileName = "Scratch V2.mp3";
  String OpenFileName = "Starting.mp3";
  songs[0] = minim.loadFile( musicPathway + grooveFileName );
  songs[1] = minim.loadFile( musicPathway + The_SimplestFileName );
  songs[2] = minim.loadFile( musicPathway + Start_Your_EnginesFileName );
  songs[3] = minim.loadFile( musicPathway + NewsroomFileName );
  songs[4] = minim.loadFile( musicPathway + Ghost_WalkFileName );
  songs[5] = minim.loadFile( musicPathway + EurekaFileName );
  songs[6] = minim.loadFile( musicPathway + AJR_WSVFileName );
  songs[7] = minim.loadFile( musicPathway + NGGYUOFileName );
  soundEffects[0] = minim.loadFile( soundEffectPathway + StopFileName );
  soundEffects[1] = minim.loadFile( soundEffectPathway + OpenFileName );
  //
  //println("Music Pathway is", musicPathway);
}//End loadMusic
