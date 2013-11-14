import java.util.Date; // importe la librairie Java 
                    // nommée java.util.Date
                    // pour le traitement des Dates. 

float taille_des_heures = 30;
float taille_des_minutes = 40;
float taille_des_secondes = 60;

String titre = "mon titre";
//
String[] nom_des_villes = {"Orléans","Berlin","Moscou","Tokyo","Los Angeles","New-York"};

float time_offset = 0;

color monGris = color(100,100,100);

Date maDate = new Date();

void setup(){
  size(950,200);// width height 
  colorMode(HSB);// Hue Saturation Brightness
  
  
}

void draw(){
  
//
  maDate = new Date();  
  
  background(monGris); // color
  

  //
  // inital translations
  //
  translate(-50,100); // dx, dy
  
  for(int h = 0; h < 6; h ++){
    //
    titre = nom_des_villes[h];
    time_offset = h;
    // loop translations
    translate(150,0); // dx, dy
    DessineUneHorloge();
    //
  }
  
  
  //

  saveFrame("screenshot.png");
  
} 

void DessineUneHorloge(){
  

  noFill();
  stroke((time_offset*40)%255,255,255);
  //strokeWeight(1+time_offset);
  ellipse(0,0,100,100);// centerX, centerY, width, height
  //
  //
  
  textAlign(CENTER,CENTER);
  text(titre,0,taille_des_secondes);
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
  long mesMillisecondes = maDate.getTime() % 60000;
  //
  rotate((mesMillisecondes/1000.0)*TWO_PI/60); // angle radians  
  line(0,0,0,-taille_des_secondes);
  popMatrix();
  //
  //
  //stroke(255,255,255);
  for(int cran = 0; cran<12; cran++){
    //
    rotate(TWO_PI/12);
    line(0,-10-taille_des_secondes,0,-taille_des_secondes);
    //
  }
  
  //
}



