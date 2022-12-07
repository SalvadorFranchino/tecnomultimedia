class Valla {
  float posicionX, posicionY;
  float vel;
  PShape v;

  Valla(float vel, float posicionX, float posicionY ) {

    this.vel = vel;
    this.posicionX =posicionX;
    this.posicionY = posicionY;
  }

  void dibujarValla() {
    v=loadShape("Valla4.svg");
    shape(v, this.posicionX, this.posicionY, 90, 90);
  }


  void reiniciarPosX() {
    this.posicionX =  height ;
  }

  void actualizar() {
    this.posicionX -= this.vel;

    if (this.posicionX  <= 0 ) {

      this.reiniciarPosX();
    }
  }
}
