import java.io.IOException;
//
// nous n'avons pas encore renommé les images JPEG
/*String monChemin00 = "export/IMG_0831 copie.jpg"; // chemin du fichier image 00
 String monChemin18 = "export/IMG_0824 copie.jpg"; // ceemin du fichier image 18
 //
 // je charge ma premiere image 18
 PImage monImage18 = loadImage(monChemin18);
 //
 // j'affiche mon image 18
 image(monImage18,0,0);
 //
 // je charge ma seconde image 00
 PImage monImage00 = loadImage(monChemin00);
 //
 // je me déplace à droite de 320 pixels
 // et j'affiche ma seconde image 00
 translate(320,0);
 image(monImage00,0,0);
 //
 // je vais une sauvegarde de l'image
 saveFrame("screenshot.png");*/
//  
String dossier = "export/";
String typeDeFichier = ".jpg";

void setup() {
  //
  size(960, 240); // fenetre de 640x240 (pour 2 images en largeur)
}


void draw() {
  //
  //
  String fichierHeure = dossier + nf(hour(),2) + typeDeFichier;
  //
  //
  PImage imageHeure  = loadImage(fichierHeure);
  //
  image(imageHeure, 0, 0);
  //
  //
  String fichierMinute = dossier + nf(minute(),2) + typeDeFichier;
  //
  //
  PImage imageMinute  = loadImage(fichierMinute);
  //
  image(imageMinute, 320, 0);
  //
  //
  String fichierSeconde = dossier + nf(second(),2) + typeDeFichier;
  //
  //
  PImage imageSeconde  = loadImage(fichierSeconde);
  //
  image(imageSeconde, 640, 0);
  //
  //
}

