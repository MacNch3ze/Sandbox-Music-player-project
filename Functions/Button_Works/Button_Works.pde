color reset = #FFFFFF;
float x = 100;
float y = 50;
float x2 = 275;
float w = 100;
boolean OnTheButton = false;
boolean OnTheButton2 = false;
void setup(){
 size(500,500);
 background(255);
 stroke(0);
 noFill();
}

void draw(){
  background(255);
  tint(255);
    if( mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + w ){
      OnTheButton = true;
      fill(#808080);
    } else {
        OnTheButton = false;
        fill(reset);
      }
  if ( OnTheButton ) {
    //println("Im on 1");
  }
  rect(x,y,w,w);
//
//
  tint(255);
    if( mouseX > x2 && mouseX < x2 + w && mouseY > y && mouseY < y + w ){
      OnTheButton2 = true;
      fill(#808080);
    } else {
        OnTheButton2 = false;
       fill(reset);
      } 
  if ( OnTheButton2 ) {
    //println("Im on 2");
  }
  rect(x2,y,w,w);
}
void mousePressed() {
  if ( OnTheButton ) {
    println("pressed on 1");
  }
  if ( OnTheButton2 ) {
    println("pressed on 2");
  }
}//mousepressed
//
