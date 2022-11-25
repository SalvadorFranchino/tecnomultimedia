
//Salvador Franchino , tp5 , Tecnologia Multimedial 1, Comision 1


//lik de video:https://www.youtube.com/watch?v=i-y-8jn0iUc
import ddf.minim.*;
Minim minim;
AudioPlayer player;
Juego j;



void setup() {
  size(600, 600);
  j= new Juego();
  minim= new Minim(this);
  player= minim.loadFile("mision-imposible-peliculas-.mp3");
}

void draw() {

  j.estados();
}
void keyPressed() {
  j.salto();
  j.keyPressed();
}
