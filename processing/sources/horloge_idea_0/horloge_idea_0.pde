import java.util.Date;
int i = 0;

float H_SIZE = 50;
float M_SIZE = 50;
float S_SIZE = 50;

void setup(){
  size(400,400);
}
void draw(){
  //
  long d = (new Date()).getTime();
  //
  background(255);
  //
  translate(width/2,height/2);
  //
  noStroke();
  i=0;
  beginShape();
  fill(0);
  //
  // utilise le time de java.util.Date
  float ms = (d%1000)/1000.0;
  float s = (d%60000)/60000.0;
  float m = (d%3600000)/3600000.0;
  float h = (d%(12*3600000))/(12*3600000.0);
  //
  ellipse(0,0,10,10);
  //
  float st = 4;
  //
  for(float n=0; n<=360; n+=st){
    float pos = n/360;
    //
    // applique des fonction puissance sur le cosinus
    float ss = pow(cos((max((s-pos+1),0)-.25)*PI),10);
    float mms = pow(cos((max((ms-pos+1),0)-.25)*PI),10);
    float mmn = pow(cos((max((m-pos+1),0)-.25)*PI),20);
    float hh = pow(cos((max((h-pos+1),0)-.25)*PI),30);
    float sSize = 20+mms*S_SIZE+ss*S_SIZE+mmn*50+hh*H_SIZE;
    vertex(cos(radians(n))*sSize,sin(radians(n))*sSize);
  }
  endShape();
  //
  //
  rotate(-PI/2);
  stroke(255,255,0);
  strokeWeight(20);
  line(0,0,cos(h*TWO_PI)*H_SIZE/2,sin(h*TWO_PI)*H_SIZE/2);
  strokeWeight(10);
  stroke(0,255,255);
  line(0,0,cos(mn*TWO_PI)*M_SIZE*2,sin(m*TWO_PI)*M_SIZE);
  stroke(255,0,255);
  strokeWeight(5);
  line(0,0,cos(s*TWO_PI)*S_SIZE*2,sin(s*TWO_PI)*S_SIZE);
  
  saveFrame("screenshot.png");
  
}
