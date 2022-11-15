/*class Tablero {
 int cantCasillas;
 Casilla [][] casillas; 
 
 Tablero(int _cantCasillas) {
 cantCasillas = _cantCasillas;   
 casillas = new Casilla [cantCasillas][cantCasillas];    
 int tam = (width-25)/cantCasillas;    
 for (int i = 0; i < cantCasillas; i++) {
 for (int j = 0; j < cantCasillas; j++) {
 casillas[i][j] = new Casilla(i, j, tam, cantCasillas );       
 }
 }
 }
 
 void dibujar() {
 for (int i = 0; i < cantCasillas; i++) {
 for (int j = 0; j < cantCasillas; j++) {
 casillas[i][j].dibujar();
 }
 }
 }
 void mousePresionado(){
 for (int i = 0; i < cantCasillas; i++) {
 for (int j = 0; j < cantCasillas; j++) {
 casillas[i][j].mousePresionado();
 }
 }
 }
 }
 */
class Tablero {
  int cantCasillas;
  Casilla [][] casillas; 
  int posX2;
  int posY2;
  int posXBomba;
  int posYBomba;
  boolean hayBomba;
  Tablero(int _cantCasillas) {
    cantCasillas = _cantCasillas;   
    casillas = new Casilla [cantCasillas][cantCasillas];    
    int tam = (width-25)/cantCasillas;    
    for (int i = 0; i < cantCasillas; i++) {
      for (int j = 0; j < cantCasillas; j++) {
        if (random(100)<20) {
          casillas[i][j] = new Casilla(i, j, tam, cantCasillas, new Bomba(i, j, tam));
        } else {
          casillas[i][j] = new Casilla(i, j, tam, cantCasillas);
        }
      }
    }
  }

  void dibujar() {
     for (int i=0; i<cantCasillas; i++) {
      for (int j=0; j<cantCasillas; j++) { 
        if (casillas[posX2][posY2].hayBomba(posX2, posY2)) {
          casillas[i][j].perdiste();

        } else {
          casillas[posX2][posY2].mostrar(i, j, posX2, posY2);
         
        }
      }
    }
  }


  void mousePresionado() { 
    posX2 = floor(map(mouseX, 15, 313, 0, cantCasillas));
    posY2 = floor(map(mouseY, 100, 397, 0, cantCasillas));
   
  }
}
