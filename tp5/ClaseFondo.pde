
class Fondo {
  PImage f;

  Fondo() {
    f = loadImage("fondo3.jpg");
  }
  void dibujarFondo() {
    f.resize(width, height);
    image(f, 0, 0);
  }
}
