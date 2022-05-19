// Tp1 Tecnologia Multimedial //<>//
//Salvador Franchino 91379/7
//Comision 1



float movimiento;
float posX;
float posY;
int mivariable;
PImage imagenuno;
PImage imagendos;
PImage imagencuatro;
PImage imagencinco;
PImage imagenseis;
String titulo;
String actoresprinci;
String actoressecu;
PFont fuentenueva;


void setup() {
  size (800, 600);

  mivariable=1;
 


  fuentenueva=loadFont("PalatinoLinotype-BoldItalic-48.vlw"); 
  imagenuno= loadImage("los simuladores11.png");
  imagendos=loadImage("los simuladores2.png");
  imagencuatro=loadImage("los simuladores4.png");
  imagencinco=loadImage("los simuladores5.png");
  imagenseis=loadImage("los simuladores6.png");

  titulo= ("Los Simuladores");
  actoresprinci= ("Actores principales:\n Federico D'Elía \n Alejandro Fiore \n Diego Peretti \n Martín Seefeld");
  actoressecu=("Actores secuandarios:\n Juan Carlos Ricci \n Jorge D'Elía \n Pasta Dioguardi  \n Fernando Sureda");
}
void draw() {



  println(frameCount);
  println (mivariable);
  frameCount=frameCount+6;


  mivariable=frameCount;
  println(frameCount);

  image(imagenuno, 0, 0, 800, 600);
  image(imagendos, 0, 0, 800, 600);
  image(imagencuatro, 0, 0, 800, 600);
  image(imagencinco, 0, 0, 800, 600);
  image(imagenseis,0,0,800,600);

 
   textFont(fuentenueva, 24);
    textSize(40);
    fill(0, 170, 0);
  
  
  if (frameCount>0)

    image(imagenuno, 0, 0, width, height);
    text(titulo,mivariable,400);


  if (frameCount>800)
    image(imagendos, 0, 0, width, height);

  if (frameCount>100 && frameCount<800) {
   
  }



  if (frameCount>800 && frameCount<1380) {
    textSize(40);
    fill(0, 255, 0);
    text("\n Director:\n Damián Szifron", 270, mivariable-800);
  }

  if (frameCount>1380 && frameCount<2250) {
    image(imagencuatro, 0, 0, width, height);
    text(actoresprinci, 270, mivariable-1600);
  }

  if (frameCount>2250 &&  frameCount<3050) {
    image(imagencinco, 0, 0, width, height);
    text(actoressecu,270, mivariable-2400);
  } 
  if (frameCount>3050 ) {
     image(imagenseis,0,0,width,height);
    textSize(40);
    fill (0, 170, 0);
    text ("Pulse r para reiniciar", 200, 400);
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') { 
  }
  frameCount = 0;
}
