// TP3 Tecnologia Multimedia 
// Salvador Franchino
// Comision 1 
// Link del video:https://youtu.be/Zji-sIQEcQo

int estado=0;
int posXCuadrados;
int posYCuadrados;
int distanciaCuadrados;
int anchoCuadrados;
int altoCuadrados;
int cantidadCuadrados;
int BotonApretado;
int ubicarCuadrados;
int EvaluarBotonesCorrectos;
String titulo;
PFont fuentenueva;
String [] respuestas ={"19", "21", "24", "25", "60", "50", "80", "100", "A", "C", "F", "L"};

void setup() {
  size (600, 600);
  background(10, 150, 255);
  estado=0;
cantidadCuadrados = 4;
posXCuadrados=260;
posYCuadrados=150;
distanciaCuadrados=100;
anchoCuadrados=80;
BotonApretado=0;
textAlign(CENTER);
  fuentenueva=loadFont("ComicSansMS-Bold-48.vlw");
  titulo=("Encuestados");
   
  
}
 


void draw () {
      
  background(10, 150, 255);
  

  
  if (estado==0) {
    //Primera pantalla
      
    textFont(fuentenueva, 24);
    textSize(60);
    fill(0);
    text(titulo, 300, 300);
    textSize(20);
    fill(0);
    text("Haga CLICK  para continuar", 200, 500);
  } else if (estado==1) {
    // Segunda Pantalla
    background(10, 150, 255);
    textSize(60);
    fill(200, 200, 0);
    text("Instrucciones", 300, 100);
    textSize(20);
    fill(0);
    text("Responde tres preguntas de cultura general  para ganar", 300, 300);
    textSize(20);
    fill(0);
    text("Haga CLICK  para continuar", 450, 500);
  
  }

  // tercer pantalla
  else if (estado==2) {
           
    fill(255);
    for(int i=0;i<cantidadCuadrados; i++){
  funcionParaCrearCuadrados();
} 
 posYCuadrados=150;
 
    text("¿Cuantas provincias tiene Argentina?", 300, 100 );
    pantallas(respuestas[0], width/2, 200, 30 );
    pantallas(respuestas[1], width/2, 300, 30 );
    pantallas(respuestas[2], width/2, 400, 30 );
    pantallas(respuestas[3], width/2, 500, 30 );
  }
  // cuarta pantalla
  else if ( estado==3 ) {
     fill(255);
    for(int i=0;i<cantidadCuadrados; i++){
  funcionParaCrearCuadrados();
} 
 posYCuadrados=150;
     
    fill(255);
    text("¿Cuanto es 20x3?", 300, 100 );
    pantallas(respuestas[4], width/2, 200, 30 );
    pantallas(respuestas[5], width/2, 300, 30 );
    pantallas(respuestas[6], width/2, 400, 30 );
    pantallas(respuestas[7], width/2, 500, 30 );
  }
  // quinta pantalla

  else if (estado==4) {

     fill(255);
    for(int i=0;i<cantidadCuadrados; i++){
  funcionParaCrearCuadrados();
} 
 posYCuadrados=150;
   
    text("¿Cual de estas letras se encuentra  \n tercera en el abedecario?", 300, 50 );
    pantallas(respuestas[8], width/2, 200, 30 );
    pantallas(respuestas[9],width/2 , 300, 30 );
    pantallas(respuestas[10], width/2, 400, 30 );
    pantallas(respuestas[11], width/2, 500, 30 );
  //sexta pantall -ganaste
}else if (estado==5) {
    fill(0);
    text("GANASTE!", width/2, height/2);
  text("Haga CLICK  para jugar de nuevo", 300, 500);

//septima-perdiste
}else if (estado==6) {
    fill(0);
   text("PERDISTE!",width/2,height/2);
      text("Haga CLICK  para reiniciar", 300, 500);
}
  

}
void pantallas(String texto, int px, int py, int tamText){
  textSize(tamText);
  fill(0);
  text(texto, px, py);
}


void funcionParaCrearCuadrados(){
 rect(posXCuadrados,posYCuadrados,anchoCuadrados,anchoCuadrados);
 posYCuadrados= posYCuadrados + distanciaCuadrados; 
}

void EvaluarColision(){

if(mouseX>=posXCuadrados && mouseX <= posXCuadrados+anchoCuadrados && mouseY>=posYCuadrados && mouseY<= posYCuadrados+anchoCuadrados){
 
BotonApretado = 1;
}else if (mouseX>=posXCuadrados && mouseX <= posXCuadrados+anchoCuadrados && mouseY>=posYCuadrados+distanciaCuadrados*1 && mouseY<= posYCuadrados+distanciaCuadrados*1+anchoCuadrados){
  
BotonApretado = 2;
}else if(mouseX>=posXCuadrados && mouseX <= posXCuadrados+anchoCuadrados && mouseY>=posYCuadrados+distanciaCuadrados*2 && mouseY<= posYCuadrados+distanciaCuadrados*2+anchoCuadrados){
  
BotonApretado = 3;
}else if(mouseX>=posXCuadrados && mouseX <= posXCuadrados+anchoCuadrados && mouseY>=posYCuadrados+distanciaCuadrados*3 && mouseY<= posYCuadrados+distanciaCuadrados*3+anchoCuadrados){
 
BotonApretado = 4;
}
  
    
  
} 
  
  void EvaluarBotonesCorrectos(){
if (estado==2){ // Estado 1
if(BotonApretado == 3){
 estado = 3;
 } else{
  estado = 6; //PERDISTE 
 }
}else if (estado==3){
 if(BotonApretado == 1){
 estado = 4;
 } else{
  estado = 6; //PERDISTE 
 }
}else if (estado==4){
 if(BotonApretado == 2){
 estado = 5;
 } else{
  estado = 6; //PERDISTE 
 }

}
 } 
        
  void mousePressed(){
       
    EvaluarColision();  
}
