//
float taille_aiguille_seconde = 60;
float taille_aiguille_minute = 40;
float taille_aiguille_heure = 20;
//
//
void setup(){
  size(200, 200);

}
void draw(){

background(255);

translate(width/2,height/2);
  ellipse(0, 0, 100, 100);// centreX, centreY, Largeur, Hauteur


pushMatrix();
rotate(radians(hour()*360/12));
line(0, 0, 0, -taille_aiguille_heure);// aX,aY,bX,bY
popMatrix();

pushMatrix();
rotate(radians(minute()*360/60));
line(0, 0, 0, -taille_aiguille_minute);// aX,aY,bX,bY
popMatrix();

pushMatrix();
rotate(radians(second()*360/60));
line(0, 0, 0, -taille_aiguille_seconde);// aX,aY,bX,bY
popMatrix();



}


