//
// déclaration des variables
//
float taille_aiguille_heure = 40;
float taille_aiguille_minute = 60;
float taille_aiguille_seconde = 80;
float diametre_cadran = 120;


void setup(){
  // démarage de l'application
  size(200,200);
}


void draw(){
  // rafraichissement du dessin
  background(255);
  
  // centre l'origine du dessin
  translate(width/2,height/2);
  //
  // dessine le cadran
  ellipse(0,0,diametre_cadran,diametre_cadran);
  //
  pushMatrix();
  //
  //
  // dessine les secondes
  rotate(second()*PI/30);
  line(0,-taille_aiguille_seconde,0,0);
  //
  popMatrix();
  //
  pushMatrix();
  //
  //
  // dessine les minutes
  rotate(minute()*PI/30);
  line(0,-taille_aiguille_minute,0,0);
  //
  popMatrix();
  //
  // dessine les secondes
  rotate(hour()*PI/6);
  line(0,-taille_aiguille_heure,0,0);
}


