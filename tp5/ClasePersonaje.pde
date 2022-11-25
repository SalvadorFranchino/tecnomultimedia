class Personaje {

  boolean saltando=false;
  boolean cayendo=false;
  float tamX, tamY, posX, posY;
  int altura = height/3;
  int piso = height;
  int velocidad;
  PShape a;

  Personaje(int velocidad) {


    posX = width/3;
    posY = height - height/5;
    tamX = width/5; 
    tamY = height/5;
    this.velocidad = velocidad;
  }
  void actualizar() {


    if (this.saltando == false) {
      this.cayendo = false;
    } else if (this.saltando == true 
      &&  this.posY > this.altura
      && this.cayendo == false) {
      this.posY-=this.velocidad;
    }
    if ( this.posY <= this.altura) {
      this.cayendo = true;
    }
    if (this.cayendo 
      && this.saltando 
      && this.posY < this.piso - this.tamY) {
      this.posY+=this.velocidad;
    } else  if (this.cayendo 
      && this.saltando 
      && this.posY >=  this.piso - this.tamY) {
      this.cayendo = false;
      this.saltando = false;
    }
  }
  void dibujarPersonaje() {
    a=loadShape("atleta3.svg");
    shape(a, this.posX, this.posY, this.tamX, this.tamY);
    
  }

  void salto() {
    if (this.saltando == false) {
      this.saltando = true;
      
    }
  }
}
