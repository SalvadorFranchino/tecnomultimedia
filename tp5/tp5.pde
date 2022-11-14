
//Salvador Franchino , tp5 , Tecnologia Multimedial 1, Comision 1

Juego j;


void setup() {
  size(600, 600);
j= new Juego();


}

void draw() {

 j.estados();


}
void keyPressed() {
   j.salto();
   j.keyPressed();
}
