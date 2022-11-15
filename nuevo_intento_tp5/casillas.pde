/*
class Casilla {
 Bomba bomba;
 int posX;
 int posY;
 int posX2;
 int posY2;
 int tam;
 PImage imagen1;
 boolean casillaPresionada; 
 PImage imagen2;
 float  numeroRandomCasillas;
 int cantCasillas;
 int [] posXmina;
 int [] posYmina;
 Casilla(int _posX, int _posY, int _tam, int _cantCasillas) {
 posX = _posX;
 posY = _posY;
 tam = _tam;
 cantCasillas =  _cantCasillas;
 imagen1 = loadImage("bloque.png");
 imagen2 = loadImage("bomba.png");
 cantCasillas = _cantCasillas;   
 numeroRandomCasillas = round(random(100));
 bomba = new Bomba(posX, posY, tam, numeroRandomCasillas);
 casillaPresionada =false;
 posXmina = new int[cantCasillas];
 posYmina = new int[cantCasillas];
 for(int i=0; i<cantCasillas; i++){
 for(int j=0; j<cantCasillas; j++){ 
 if( numeroRandomCasillas < 30){
 posXmina[i] = posX;      
 posYmina[j] = posY;
 }
 }
 }
 }
 
 
 void dibujar() {    
 
 if (casillaPresionada == true){ 
 for(int i=0; i<cantCasillas; i++){
 for(int j=0; j<cantCasillas; j++){ 
 image(imagen2, (posXmina[i] * tam)+15, (posYmina[j] * tam)+100, tam, tam);
 }
 }
 } else{ 
 image(imagen1, (posX * tam)+15, (posY * tam)+100, tam, tam);
 } 
 
 }
 
 
 
 void mousePresionado(){ 
 posX2 = floor(map(mouseX, 15, 313, 0, cantCasillas));
 posY2 = floor(map(mouseY, 100, 397, 0, cantCasillas));
 for(int i=0; i<cantCasillas; i++){
 for(int j=0; j<cantCasillas; j++){ 
 if(casillas[posX2-1][posY2-1].hayBomba()){
 perdiste();
 }else{
 casillas[posX2-1][posY2-1].mostrar()
 casillas[posX2-1][posY2].mostrar()
 casillas[posX2-1][posY2+1].mostrar()
 .........
 }
 }
 }
 }
 }
 */
 
class Casilla {
  Bomba bomba;
  int posX;
  int posY;
  int posXBomba;
  int posYBomba;
  int posX2;
  int posY2;
  int tam;
  PImage imagen1;
  boolean casillaPresionada; 
  PImage imagen2;
  float  numeroRandomCasillas;
  int cantCasillas;

  Casilla(int _posX, int _posY, int _tam, int _cantCasillas, Bomba _bomba) {
    posXBomba = _posX;
    posYBomba = _posY;
    tam = _tam;    
    bomba = _bomba;
    cantCasillas = _cantCasillas;   
    imagen1 = loadImage("bloque.png");
    imagen2 = loadImage("bomba.png");
  }

  Casilla(int _posX, int _posY, int _tam, int _cantCasillas) {
    posX = _posX;
    posY = _posY;
    tam = _tam;
    cantCasillas =  _cantCasillas;
    imagen1 = loadImage("bloque.png");
    imagen2 = loadImage("bomba.png");
    cantCasillas = _cantCasillas;
  }

  boolean hayBomba(int posX, int posY) {
    if (bomba != null && posX == posXBomba && posY == posYBomba) {
      return true;
    } else {
      return false;
    }
  } 

  void mostrar(int i, int j, int posX, int posY) { 
    image(imagen1, (i* tam)+15, (j * tam)+100, tam, tam);
    if(posX == posXBomba+1 && posY == posYBomba) {
    image(imagen2, (posX* tam)+15, (posY * tam)+100, tam, tam);
    }else{
      image(imagen1, (i* tam)+15, (j * tam)+100, tam, tam);
    }
  }

  void perdiste() { 
    image(imagen2, (posXBomba * tam)+15, (posYBomba * tam)+100, tam, tam);
    image(imagen1, (posX* tam)+15, (posY * tam)+100, tam, tam);
    
  }
}
