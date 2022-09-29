class Valla {
  float posicionX, posicionY;
  int vel;
  float radio;
  PShape v;

  Valla(int vel) {

    this.vel = vel;
    this.posicionX = height ;
    this.posicionY = 340;
  }


  void dibujarValla() {


    v=loadShape("Valla4.svg");
    shape(v, this.posicionX, this.posicionY, 80, 80);
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
