class Valla {
  float posicionX, posicionY;
  float vel;
  PShape v;
  float radio;
int contador;
  Valla(float vel) {


    this.vel = vel;
    this.posicionX = height ;
    this.posicionY = width-60;
    this.radio=width/20;
  }


  void dibujarValla() {
    v=loadShape("Valla4.svg");
    shape(v, this.posicionX, this.posicionY, 90, 90);
 text(contador, 300, 300);
}


  void reiniciarPosX() {
    this.posicionX =  height ;
  }

  void modificarVel(float velNueva) {
    this.vel = velNueva;
    velNueva=(random(4, 10));
  }




  void actualizar() {
    this.posicionX -= this.vel;

    if (this.posicionX  <= 0 ) {

      this.reiniciarPosX();

      contador++;
}

}
}
