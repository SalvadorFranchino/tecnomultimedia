

class Juego {

  int estado = 0; 
  Fondo fondo;
  Personaje personaje;
  Valla[] valla= new Valla[2];
  boolean termina=false;
  int contador=0;

  Juego() {

    fondo=new Fondo();
    personaje = new Personaje(10);                         
    for (int i = 0; i < 2; i++) {
      valla[i]=new Valla(4, 550+i*300, 530);
    }
  }

  void colision() {
    for (int i=0; i<2; i++) {          
      if (valla[i].posicionX+55  <  personaje.posX + personaje.tamX
        && valla[i].posicionX  > personaje.posX
        &&  personaje.posY + personaje.tamY >valla[i].posicionY+50) {
        estado=3;
        println("colision");
      }
    }
  }

  void estados() {
    if (estado==0) {
      inicio();
    }
    if (estado==1) {
      instrucciones();
    }
    if (estado==2) {
      jugar();
      player.play();
    }    
    if (estado==3) {
      perdiste();
      player.pause();
      player.rewind();
    }
    if (estado==4) {
      Ganaste();
      player.pause();
      player.rewind();
    }  


    if (estado==5) {
      volverAjugar();
      for (int i=0; i<2; i++) {       
        valla[i].actualizar();
        valla[i].posicionX=550+i*300;
      }
      personaje.actualizar();
      contador=0;
    }
  }

  void inicio() {
    estado = 0;
    background(0);
    textAlign(CENTER);
    textSize(40);
    fill( 252, 227, 28);
    text("SALTO A LA VALLA", width-300, height/2);
    textSize(28);
    fill(66, 75, 227);
    text("Pulsa W para continuar", width-300, height-100);
  }
  void instrucciones() {
    estado = 1;
    background(0);
    textAlign(CENTER);
    textSize(40);
    fill(252, 227, 28);
    text ("INSTRUCCIONES", width-300, height-500);      
    textSize(25);
    fill(255);
    text("Tu objetivo es saltar 15 vallas para ganar! \n Si las chocas vas a perder! \n Utiliza la barra espaciadora para saltar ", width-300, height-350);      
    fill(66, 75, 227);
    text("Pulsa S para JUGAR", width-300, height-100);
  }
  void jugar() { 
    estado = 2;         
    fondo.dibujarFondo();   
    personaje.dibujarPersonaje();
    personaje.actualizar();        
    textSize(28);
    fill(255);
    text("Puntaje:", 280, 380);      
    textSize(25);
    text(contador, 350, 380);
    this.colision();              
    this.revisar();
    for (int i=0; i<2; i++) {       
      valla[i].dibujarValla();   
      valla[i].actualizar();
    }
    if (contador>15) {
      estado=4;
    }
  }

  void perdiste() {
    estado=3;    
    textSize(70);
    fill(255, 0, 0);
    text("PERDISTE!", height/2, 235);
    textSize(35);
    text("Pulsa la P para continuar ", height/2, 300);
  }
  void Ganaste() {
    estado=4;
    textAlign(CENTER); 
    textSize(70);
    fill(16, 90, 6);
    text("GANASTE!", height/2, 235);
    textSize(35);
    text("Pulsa la G para continuar ", height/2, 300);
  }


  void volverAjugar() {
    estado= 5; 
    background(0);
    textAlign(CENTER); 
    textSize(25);
    fill(252, 227, 28);
    text("Juego creado por Salvador Franchino \n para Tecnologia Multimedial 1", height/2, 200);      
    textAlign(CENTER); 
    textSize(30);
    fill(66, 75, 227);
    text("Pulsa la C para volver a jugar!", height/2, 400);
  }

  void revisar() {
    for (int i = 0; i < 2; i++) {
      if ( valla[i].posicionX<=5) {

        termina=true;  
        contador++;
      }
    }
  }  



  void keyPressed() {
    if (estado == 0) {
      if (key == 'w' || key == 'W') {
        estado = 1;
      }
    }
    if (estado == 1) {
      if (key == 's' || key == 'S') {
        estado = 2;
      }
    }
    if (estado == 2) {
      if (key == ' ' ) {
        personaje.salto();
      }
    } 

    if (estado == 3) {
      if (key == 'p' || key == 'P') {
        estado = 5;
      }
    } 
    if (estado == 4) {
      if (key == 'g' || key == 'G') {
        estado = 5;
      }
    }

    if (estado == 5) {
      if (key == 'c' || key == 'C') {
        estado = 0;
      }
    }
  }
}
