//
// déclaration d’un objet Police de Caractère pour Processing
PFont font;
//

void setup(){
  //
  // dimensions de la fenetre
  size(320,240);
  //
  // pas de contour
  noStroke();
  //
  // importer une police, de taille 200
  font = createFont("Helvetica",200);
  //
  // associer la police au dessin Processing 
  textFont(font);
  // alignement du texte, horizontal et vertical
  textAlign(CENTER,CENTER);
  //
  // déplacer au centre  
  translate(width/2,height/2);
  //
  // boucle for
  for(int i=0; i<60; i++){
    // répition 60 fois
    //
    // fond de couleur aléatoire
    background(color(random(255),random(255),random(255)));
    // remplissage de couleur aléatoire
    fill(color(random(255),random(255),random(255)));
    //
    // 
    text(nf(i,2),0,0); // dessin du texte
    saveFrame(nf(i,2)+".jpg"); // sauvegarder un fichier image
    //
  }
}

void draw(){
  
}
