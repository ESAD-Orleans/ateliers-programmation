import java.util.Date;

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
  
  time_offset = 10;
  translate(200,0); // dx, dy
  fill(100,0,200);
  DessineUneHorloge();
  
} 

void DessineUneHorloge(){
  
  fill((millis()*.1)%256,0,second()*4);
  rectMode(CENTER);
  stroke(0);
  strokeWeight(1);
  //
  rect(0,0,100,100);// centerX, centerY, width, height

  stroke(255);
  strokeWeight(3);
  //
  //
  pushMatrix();
  rotate((time_offset+hour()+minute()/60)*TWO_PI/12); // angle radians  
  line(0,0,0,-taille_des_heures);
  popMatrix();
  //
  pushMatrix();
  rotate((minute())*TWO_PI/60); // angle radians  
  line(0,0,0,-taille_des_minutes);
  popMatrix();
  //
  pushMatrix();
  Date d = new Date();
  float millisecond = (d.getTime()%1000)*0.001;
  rotate((second()+millisecond)*TWO_PI/60); // angle radians  
  line(0,0,0,-taille_des_secondes);
  popMatrix();
  //
  
}



