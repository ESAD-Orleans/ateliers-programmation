float taille_des_heures = 30;
float taille_des_minutes = 40;
float taille_des_secondes = 60;

float time_offset = 0;

void setup(){
  size(400,200);// width height 
}

void draw(){
    
  background(219,73,73); // color
  
  time_offset = 0;
  translate(100,100); // dx, dy
DessineUneHorloge();
  
  time_offset = -6;
  translate(200,0); // dx, dy
DessineUneHorloge();
  
} 

void DessineUneHorloge(){
    ellipse(0,0,100,100);// centerX, centerY, width, height
  //
  //
  pushMatrix();
  rotate((time_offset+hour())*TWO_PI/12); // angle radians  
  line(0,0,0,-taille_des_heures);
  popMatrix();
  //
  pushMatrix();
  rotate(minute()*TWO_PI/60); // angle radians  
  line(0,0,0,-taille_des_minutes);
  popMatrix();
  //
  pushMatrix();
  rotate(second()*TWO_PI/60); // angle radians  
  line(0,0,0,-taille_des_secondes);
  popMatrix();
  //
  
}



