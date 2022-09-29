
//Tecnologia Multimedial 1 , tp4 . Salvador Franchino
//Link del video:https://youtu.be/SkLC1vQIYag

Principal p; 
void setup() {
  size(400, 400);
p = new Principal();
}

void draw() {
   p.actualizar();
  p.dibujar();
}

void keyPressed() {
   p.teclas();
}
