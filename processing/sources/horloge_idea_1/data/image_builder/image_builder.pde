PFont font;
void setup(){
  size(320,240);
  noStroke();
  //
  font = createFont("Helvetica",200);
  textFont(font);
  textAlign(CENTER,CENTER);
  //
  translate(width/2,height/2);
  for(int i=0; i<60; i++){
    background(color(random(255),random(255),random(255)));
    fill(color(random(255),random(255),random(255)));
    text(""+nf(i,2),0,0);
    saveFrame(nf(i,2)+".jpg");
  }
}

void draw(){
  
}
