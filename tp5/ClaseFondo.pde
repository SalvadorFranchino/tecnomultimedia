
class Fondo {
  PImage f;

  Fondo() {
    f = loadImage("fondo3.jpg");
}
  void dibujarFondo() {
    f.resize(400, 400);
    image(f, 0, 0);
  }
}
