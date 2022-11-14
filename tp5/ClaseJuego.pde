class Juego {
  Fondo fondo;
  Personaje personaje;
  Valla valla;
  int estado = 0;
 

  Juego() {
   fondo=new Fondo();
    personaje = new Personaje(10);
    valla = new Valla(5);
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
    }
    if (estado==3) {
    perdiste();
    }
      
  }


  void inicio() {
    estado = 0;
     background(0);
    textAlign(CENTER);
    textSize(40);
    text("Salto a la Valla", width-300, height/2);
        textSize(20);
     text("Pulsa W para continuar", width-300,height-100);
  }
  void instrucciones() {
       estado = 1;
    background(0);
     textAlign(CENTER);
      textSize(40);
   text ("Instrucciones", width-300, height-500);      
    textSize(20);
    text("Salta la valla  todas veces que puedas! \n Si la chocas vas a perder! \n Utiliza la barra espaciadora para saltar ", width-300,height-350);
    text("Pulsa S para continuar", width-300,height-100);
   
  }
  void jugar() {
    estado = 2;   
     valla.actualizar();
    personaje.actualizar();
    fondo.dibujarFondo();
    personaje.dibujarPersonaje();
    valla.dibujarValla();
  }
  
 
  

  void perdiste() {
    estado = 3;
   
    textAlign(CENTER); 
    textSize(30);
    fill(255);
    text("PERDISTE!", height/2, 235);
    textSize(20);
    text("Volver a Jugar = I", height/2, 300);
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
      if (key == 'i' || key == 'I') {
        estado = 3;
      }
    }
    
  }
void salto() {

    personaje.salto();
  }
}
