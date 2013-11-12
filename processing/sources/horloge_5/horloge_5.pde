import java.util.Date;
int fontSize = 80;
PFont font = createFont("monaco",80);
void setup(){
  //
  size(400,400);
  //
}
void draw(){
  //
  //
  int paire = second()%2;
  float ms = (new Date()).getTime()%60000;
  float level = (sin(PI*ms/1000)+1)/2;
  float level2 = (sin(2*PI*ms/1000-PI)+1)/2;
  //
  background(paire*255);
  fill(255-paire*255);
  translate(width/2,height/2);
  //
  String t = nf(hour(),2)+":"+nf(minute(),2)+":"+nf(second(),2);
  textAlign(CENTER);
  textFont(font);
  textSize(fontSize);
  text(t,0,fontSize*.36);
  String d = nf(day(),2)+"/"+nf(month(),2)+"/"+year();
  textSize(fontSize*.2);
  text(d,0,fontSize*.2*4);
  //
  //saveFrame("f##.jpg");
}
