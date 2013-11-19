
size(320,240);
PImage monImage = loadImage("export/IMG_0831 copie.jpg");
image(monImage,0,0);


size(640,240);
String monChemin00 = "export/IMG_0831 copie.jpg";
String monChemin18 = "export/IMG_0824 copie.jpg";
//
PImage monImage18 = loadImage(monChemin18);
//
image(monImage18,0,0);
//
PImage monImage00 = loadImage(monChemin00);
//
translate(320,0);
image(monImage00,0,0);

saveFrame("screenshot.png");
