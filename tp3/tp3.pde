// TP3 Tecnologia Multimedia 
// Salvador Franchino
// Comision 1 
// Link del video:

int estado=0;
float distan;
String titulo;
PFont fuentenueva;
String [] respuestas ={"19", "21", "24", "25", "60", "50", "80", "100", "Rosario", "Santa Fe capital", "Rio Cuarto", "Asunción"};
boolean pierde;
boolean gana;
void setup() {
  size (600, 600);
  estado=0;
  fuentenueva=loadFont("ComicSansMS-Bold-48.vlw");
  titulo=("Encuestados");
  distan=dist(mouseX, mouseY, height, width);
}

void draw () {

  background(10, 150, 255);
  println(distan);
  if (estado==0) {
    //Primera pantalla
    textFont(fuentenueva, 24);
    textSize(60);
    fill(0);
    text(titulo, 150, 300);
    textSize(20);
    fill(0);
    text("Haga CLICK  para continuar", 150, 500);
  } else if (estado==1) {
    // Segunda Pantalla
    textSize(60);
    fill(200, 200, 0);
    text("Instrucciones", 150, 100);
    textSize(20);
    fill(0);
    text("Responde tres preguntas de cultura general  para ganar", 50, 300);
    textSize(20);
    fill(0);
    text("Haga CLICK  para continuar", 150, 500);
  }

  // tercer pantalla
  else if (estado==2) {
    fill(255);
    rect(260, 150, 80, 80);
    rect(260, 250, 80, 80);
    rect(260, 350, 80, 80);
    rect(260, 450, 80, 80);
    text("¿Cuantas provincias tiene Argentina?", 300, 100 );
    pantallas(respuestas[0], width/2, 200, 30 );
    pantallas(respuestas[1], width/2, 300, 30 );
    pantallas(respuestas[2], width/2, 400, 30 );
    pantallas(respuestas[3], width/2, 500, 30 );
  }
  // cuarta pantalla
  else if ( estado==3 ) {
    fill(255);
    rect(260, 150, 80, 80);
    rect(260, 250, 80, 80);
    rect(260, 350, 80, 80);
    rect(260, 450, 80, 80); 
    fill(255);
    text("¿Cuanto es 20x3?", 300, 100 );
    pantallas(respuestas[4], width/2, 200, 30 );
    pantallas(respuestas[5], width/2, 300, 30 );
    pantallas(respuestas[6], width/2, 400, 30 );
    pantallas(respuestas[7], width/2, 500, 30 );
  }
  // quinta pantalla

  else if (estado==4) {
    fill(255);
    rect(200, 150, 225, 70);
    rect(200, 250, 250, 70);
    rect(200, 350, 225, 70);
    rect(200, 450, 225, 70);
    fill(255);
   
    text("¿Cual es la capital de la provincia \n de Santa Fe?", 300, 50 );
    pantallas(respuestas[8], width/2, 200, 30 );
    pantallas(respuestas[9], 320, 300, 30 );
    pantallas(respuestas[10], width/2, 400, 30 );
    pantallas(respuestas[11], width/2, 500, 30 );
  //sexta pantall -ganaste
}else if (estado==5) {
    fill(0);
    text("GANASTE!", width/2, height/2);
 
}
//septima-perdiste
//} else if (estado==6) {
   // fill(0);
   // text("PERDISTE!",width/2,height/2);
  }

  





void pantallas(String texto, int px, int py, int tamText){
  textSize(tamText);
  textAlign(CENTER);
  fill(0);
  text(texto, px, py);
}


void mousePressed() {
  if (estado==0) {
    estado=1;
  } else if (estado==1) {
    estado=2;
  } else if (estado==2) {
    if (mouseX>280&&mouseX<320&&mouseY>350&&mouseY<400) {
      estado=3; 
    
    
    } else if(estado==2) 
    if(mouseX>280&&mouseX<320&&mouseY>200&&mouseY<550){
  estado=6;
  
    } 
 
} else if (estado==3) {
    if (mouseX>0&&mouseX<width&&mouseY>0&&mouseY<320) {
      estado=4;
    }
  } else if (estado==4) {
    if (mouseX>0&&mouseX<width&&mouseY>0&&mouseY<320) {
      estado=5;
    }
  } else if (estado==5) {
    estado=0;
  }
}
