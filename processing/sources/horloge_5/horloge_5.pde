import java.util.Date; // importe la library de Date
//
int fontSize = 80; // taille du corps de texte, variable (nombre entier) avec pour valeur 80
PFont font = createFont("monaco",80); // créé une police de caractère
//
void setup(){ // initialisation du programme
  //
  size(400,400); // taille de la fenetre
  //
}
void draw(){ // nouvelle frame
  //
  //
  int paire = second() % 2; // déduit la seconde paire ou impaire
  //
  //float ms = (new Date()).getTime()%60000;
  //float level = (sin(PI*ms/1000)+1)/2;
  //float level2 = (sin(2*PI*ms/1000-PI)+1)/2;
  //
  background(paire*255); // arriere-plan
  fill(255-paire*255); // couleur de texte
  //
  translate(width/2,height/2);
  //
  String t = nf(hour(),2)+":"+nf(minute(),2)+":"+nf(second(),2);
  textAlign(CENTER);
  textFont(font);
  textSize(fontSize);
  text(t,0,fontSize*.36);
  String d = nf(day(),2)+"/"+nf(month(),2)+"/"+year();
  textSize(fontSize*.2);
  text(d,0,fontSize*.2*4);
  //
  saveFrame("screenshot.jpg");
}
