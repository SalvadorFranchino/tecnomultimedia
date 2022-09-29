class Principal {

  Personaje Personaje;
  Valla Valla;
  Fondo Fondo;

  Principal() {


    Fondo=new Fondo();
    Personaje = new Personaje(10);
    Valla = new Valla(5);
  }

  void actualizar() {

    Personaje.actualizar();
    Valla.actualizar();

  }

  void dibujar() {

    Fondo.dibujarFondo();
    Personaje.dibujarPersonaje();
    Valla.dibujarValla();
  }

  void colisiones() {

    if (Valla.posicionX - Valla.radio <  Personaje.posX + Personaje.tamX
      && Valla.posicionX + Valla.radio > Personaje.posX
      &&  Personaje.posY + Personaje.tamY > Valla.posicionY) {
    }
  }
  void teclas() {

    Personaje.teclas();
  }
}
