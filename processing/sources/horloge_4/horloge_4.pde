import java.util.Date; // importe la librairie Java 
                       // nommée java.util.Date
                      // pour le traitement des Dates. 

// tailles des aiguilles en pixels
float taille_des_heures = 20; 
float taille_des_minutes = 30;
float taille_des_secondes = 40;
// rayon du cadran en pixel
float rayon = 50;

// initialisation d'une palette de couleurs
color rouge = color(255,0,0);
color blanc = color(255);
color noir = color(0);
color gris = color(150,150,150);

// tableau des fuseaux horaire
// où une case unitaire vaut une heure de décalage
String[] fuseauxHoraires = {"Orléans","Helsinki","Moscou","La Mecque","Téhéran","Samarcande","Delhi","Astana","Pékin","Tokyo","Sydney","Auckland","Honolulu","Anchorage","San Fransisco","Las Vegas"};

// initialisation d'un objet date usuel
Date date = new Date();
//
//
//
void setup(){
  size(880,200);// width height 
}
//
//
//
void draw(){
  
  date = new Date(); // actualise la date
    
  background(gris); // remplissage de l'arrière-plan en gris
  
  // boucle itérative, qui va faire les 6 horloges
  for(int offset=0; offset<18; offset+=3){
  // 6 horloges car 18/3 = 6. le décalage horaire est de 3
  //
  //
  // applique une translation en fonction du décallage 
  translate(100+offset*45,100); // dx, dy
  //
  DessineUneHorloge(offset,fuseauxHoraires[offset]);
  // dessine l'horloge
  }
  //
  // sauvegarde un screenshot
  saveFrame("screenshot.png");
  
} 

//
//
// fonction qui dessine une horloge
void DessineUneHorloge(float time_offset,String fuseau){
 // la fonction a deux paramètres

  noFill();
  stroke(noir);
  ellipse(0,0,100,100);// centerX, centerY, width, height
  //
  //
  //
  stroke(blanc);
  strokeWeight(2);
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
  strokeWeight(1);
  stroke(255,0,0);
  pushMatrix();
  long milliseconds = date.getTime() % 60000;
  rotate((milliseconds/1000.0)*TWO_PI/60); // angle radians  
  line(0,0,0,-taille_des_secondes);
  popMatrix();
  fill(255,0,0);
  //
  fill(rouge);
  ellipse(0,0,5,5);
  noFill();
  //
  stroke(blanc);
  pushMatrix();
  for(int division=0; division<12; division++){
    int grandCran = 0;
    if(division%3==0){
      grandCran = 8;
    }
    line(0,rayon-6+grandCran,0,rayon-12);
    rotate(PI/6);
  }
  popMatrix();
  textAlign(CENTER);
  fill(noir);
  text(fuseau,0,rayon+20);

  resetMatrix();
  //
  
}



