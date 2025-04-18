PImage referencia;

void setup() {
  size(800, 400);
  referencia = loadImage("miobjeto.jpg");
  background(220, 240, 255);

  drawFondo();

  image(referencia, 20, 50, 250, 250);

  drawTablet(300, 100);
  drawPen(700, 120);
}

void drawFondo() {
  noStroke();
  fill(200, 220, 250, 80);
  ellipse(400, 100, 300, 100);
  ellipse(200, 300, 200, 80);
  ellipse(650, 350, 250, 90);
}

void drawTablet(float x, float y) {
  // tablet
  fill(30);
  stroke(0);
  strokeWeight(1);
  rect(x, y, 350, 200, 15);

  // luz
  noStroke();
  fill(255, 150, 0);
  ellipse(x + 10, y + 10, 8, 8);

  // lateral negro
  fill(20);
  rect(x, y, 40, 200, 15, 0, 0, 15);

 // esquinas
fill(255);
float l = 10; // largo
float t = 2;  // grosor
float offset = 3;
float extraShift = 10;

// arriba izquierda
rect(x + 30 + offset + extraShift, y + 20 + offset, l, t); // horizontal
rect(x + 30 + offset + extraShift, y + 20 + offset, t, l); // vertical

// arriba derecha
rect(x + 310 - l + t + offset, y + 20 + offset, l, t);
rect(x + 310 + offset, y + 20 + offset, t, l);

// abajo izquierda
rect(x + 30 + offset + extraShift, y + 180 - t + offset, l, t);
rect(x + 30 + offset + extraShift, y + 180 - l + offset, t, l);

// abajo derecha
rect(x + 310 - l + t + offset, y + 180 - t + offset, l, t);
rect(x + 310 + offset, y + 180 - l + offset, t, l);
}

void drawPen(float x, float y) {
  // lapiz
  fill(30);
  noStroke();
  rect(x, y, 10, 160, 5);

  // punta
  triangle(x, y + 160, x + 10, y + 160, x + 5, y + 170);

  // botones
  fill(60);
  rect(x + 2, y + 30, 6, 10, 2);
  rect(x + 2, y + 50, 6, 10, 2);
}
