//
size(640,240); // fenetre de 640x240 (pour 2 images en largeur)
//
// nous n'avons pas encore renommé les images JPEG
String monChemin00 = "export/IMG_0831 copie.jpg"; // chemin du fichier image 00
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
saveFrame("screenshot.png");
