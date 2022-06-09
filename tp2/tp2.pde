//Tp2  Tecnologia Multimedial
// Salvador Franchino 91379/7
// Comision 1
// link del video: https://youtu.be/EBGVj0vJHRM


int cant=10;
int tam;



void setup() {

  size (500, 500);
  tam=width/cant;
}

void draw() {
  background(0);
  tam = width/cant;
  println(frameCount);
  for (int f=0; f<cant; f++) {
    for (int r=0; r<cant; r++) {

      fill(220, 220, 0);
      ellipse(f*tam+25, r*tam+25, tam, tam);// primer circulo
      for (int e=tam; e>0; e-=20) {
        ellipse(f*tam+25, r*tam+25, tam-25, tam-25); //segundo circulo

        if ((f+r+e)%2==0) { // ciruculos interiores azules
          fill(0, 0, 255);
        } else {           // ciruculos interiores  rojos
          fill(255, 0, 0);

          if (frameCount>300)
            fill(random(300), random(300), random(300));//los circulos azules no se van a modificar


          if (frameCount>1000)
            frameCount=0;
        }
      }
    }
  }
}

void mousePressed() {
  cant++;
}

void keyPressed() { //al presionar una tecla vuelven a ser 10 circulos
  cant = 10;
}
