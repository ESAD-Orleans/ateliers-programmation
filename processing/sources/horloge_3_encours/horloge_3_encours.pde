float taille_des_heures = 30;
float taille_des_minutes = 40;
float taille_des_secondes = 60;

float time_offset = 0;

color monGris = color(100,100,100);

void setup(){
  size(400,200);// width height 
  colorMode(HSB);// Hue Saturation Brightness
}

void draw(){
    
  background(monGris); // color
  
  time_offset = 0;
  translate(100,100); // dx, dy
  DessineUneHorloge();
  
  time_offset = -6;
  translate(200,0); // dx, dy
  DessineUneHorloge();

  saveFrame("screenshot.png");
  
} 

void DessineUneHorloge(){
  

  noFill();
  stroke(255);
  ellipse(0,0,100,100);// centerX, centerY, width, height
  //
  //
  //
  pushMatrix();
  rotate((time_offset+hour()+minute()/60.0)*TWO_PI/12); // angle radians  
  line(0,0,0,-taille_des_heures);
  popMatrix();
  //
  pushMatrix();
  rotate((minute()+second()/60.0)*TWO_PI/60); // angle radians  
  line(0,0,0,-taille_des_minutes);
  popMatrix();
  //
  pushMatrix();
  rotate((millis()/1000.0)*TWO_PI/60); // angle radians  
  line(0,0,0,-taille_des_secondes);
  popMatrix();
  //
  
}



