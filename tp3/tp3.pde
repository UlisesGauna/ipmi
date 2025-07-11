//https://www.youtube.com/watch?v=_CDMKjB4APk&ab_channel=UlisesGauna
//la funcion de retorno que añadi devuelve un color segun el numero del circulo, oscureciendose usando el for anidado para que cuando mas al centro este, mas oscuro se vea.
PImage referencia;
int cantidadCirculos=20;

color colorR0, colorR1, colorR2, colorR3, colorR4, colorR5, colorR6, colorR7, colorR8, colorR9;
color colorR10, colorR11, colorR12, colorR13, colorR14, colorR15, colorR16, colorR17, colorR18, colorR19;
color colorR20, colorR21, colorR22, colorR23, colorR24, colorR25, colorR26, colorR27, colorR28, colorR29;

void setup() {
  size(800, 400);
  referencia= loadImage("leparc.png");
  noStroke();
  colores(cantidadCirculos);
  }
  
  void draw () {
    background(255);
    image(referencia, 0, 0, 400, 400);
    mostrarCirculos(600, 200, cantidadCirculos);
    }
    
void mostrarCirculos(int centroX, int centroY, int cantidad) {
 for (int i= cantidad; i>0; i--){
 int radio= i * (190/cantidad);
 color c = obtenerColor(i);
 fill(c);
                                               
                         
 ellipse (centroX, centroY, radio * 2, radio * 2);
  }
  }
  color obtenerColor(int i) {
  int r = 0;
  int g = 0;
  int b = 0;

  if (i % 7 == 0) {
    r = 255; g = 0; b = 0;
  } else if (i % 7 == 1) {
    r = 255; g = 127; b = 0;
  } else if (i % 7 == 2) {
    r = 255; g = 255; b = 0;
  } else if (i % 7 == 3) {
    r = 0; g = 255; b = 0;
  } else if (i % 7 == 4) {
    r = 0; g = 255; b = 255;
  } else if (i % 7 == 5) {
    r = 0; g = 0; b = 255;
  } else {
    r = 139; g = 0; b = 255;
  }

  for (int j = 0; j < i; j++) {
    r = max(0, r - 8);
    g = max(0, g - 8);
    b = max(0, b - 5);
  }

  return color(r, g, b);
}

                          
    void colores(int cantidad) {
       if (cantidad > 30) cantidad = 30;
   if (cantidad >= 1) colorR0 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 2) colorR1 = color(random(1,255), random(1,200), random(1,255));
   if (cantidad >= 3) colorR2 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 4) colorR3 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 5) colorR4 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 6) colorR5 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 7) colorR6 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 8) colorR7 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 9) colorR8 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 10) colorR9 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 11) colorR10 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 12) colorR11 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 13) colorR12 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 14) colorR13 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 15) colorR14 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 16) colorR15 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 17) colorR16 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 18) colorR17 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 19) colorR18 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 20) colorR19 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 21) colorR20 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 22) colorR21 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 23) colorR22 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 24) colorR23 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 25) colorR24 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 26) colorR25 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 27) colorR26 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 28) colorR27 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 29) colorR28 = color(random(1,255), random(1,200), random(1,255));
  if (cantidad >= 30) colorR29 = color(random(1,255), random(1,200), random(1,255));
       
       }
          
    void mouseMoved() {
      if (mouseX > 400) {
        int nuevaCantidad = int(map(mouseY, 0, height, 5, 30));
        if (nuevaCantidad != cantidadCirculos) {
          cantidadCirculos = nuevaCantidad;
          colores(cantidadCirculos);
          }
          }
          }
          
          void keyPressed () {
            if (key== 'r') {
              cantidadCirculos = 20;
              colores (cantidadCirculos);
              }
              }
              
