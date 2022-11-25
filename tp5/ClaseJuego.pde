

class Juego {
  int estado = 0;
  float velNueva=5;
  Fondo fondo;
  Personaje personaje;
  Valla[] valla= new Valla[2];


  Juego() {

    fondo=new Fondo();
    personaje = new Personaje(10);                 
    for (int i = 0; i < 2; i++) {
      valla[i]=new Valla(velNueva);
      valla[i].modificarVel(random(3,3.2));
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
      
    if (estado==5) {
      volverAjugar();
      for (int i=0; i<2; i++) {       
        valla[i].actualizar();
      }
      personaje.actualizar();

  }
  }

  void inicio() {
    estado = 0;
    background(0);
    textAlign(CENTER);
    textSize(40);
    text("Salto a la Valla", width-300, height/2);
    textSize(20);
    text("Pulsa W para continuar", width-300, height-100);
  }
  void instrucciones() {
    estado = 1;
    background(0);
    textAlign(CENTER);
    textSize(40);
    text ("Instrucciones", width-300, height-500);      
    textSize(20);
    text("Salta la valla  todas las veces que puedas! \n Si la chocas vas a perder! \n Utiliza la barra espaciadora para saltar ", width-300, height-350);
    text("Pulsa S para JUGAR", width-300, height-100);
  }
  void jugar() { 
    estado = 2;         

    fondo.dibujarFondo(); 
    personaje.dibujarPersonaje();
    personaje.actualizar();        
    this.colision();          
    for (int i=0; i<2; i++) {       
      valla[i].dibujarValla();   
      valla[i].actualizar();
    }
  }  
  void perdiste() {
    estado = 3;

    textAlign(CENTER); 
    textSize(60);
    fill(255);
    text("PERDISTE!", height/2, 235);
    textSize(30);
    text("Pulsa la P para continuar ", height/2, 300);
  }
  
  void volverAjugar() {
    estado= 5; 
    background(0);
    textAlign(CENTER); 
    textSize(30);
    fill(255);
    text("Pulsa la c para volver a jugar!", height/2, 235);
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

    if (estado == 3) {
      if (key == 'p' || key == 'P') {
        estado = 5;
      }
    } 


    if (estado == 5) {
      if (key == 'c' || key == 'C') {
        estado = 0;
      }
    }
  }
  void salto() {

    personaje.salto();      
}
}
