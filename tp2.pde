
PImage[] images = new PImage[5];
String[] texts = {
  "Desarrollado por el team Silent...",
  "Silent Hill 2 narra la historia de James Sunderland, quien recibe una carta de su esposa Mary diciendole que lo espera en el pueblo de Silent Hill...",
  "Pero su esposa fallecio hace años, lo que lleva a James a investigar el pueblo y adentrarse en sus conflictos mentales.",
  "El juego tiene 2 historias. LetterFrom Silent Heaven: la historia de James y Born From A Wish: la historia de Maria, una manifestacion de los deseos carnales de James...",
  "Actualmente, el juego cuenta con un remake desarollado por BluberTeam. Este remake expande un poco la historia y cambia significativamente el gameplay."
};

String screen ="inicio";
PFont font;
int changeTime = 0;
float textY = 480;
float textY1 = 480;
float textY2 = 480;
float textY3 = 480;
float textY4 = 480;
int botonx = 180;
int botony = 350;
int botonw = 300;
int botonh = 50;
boolean botonI = false;

void setup() {
  size(640, 480);
  images[0] = loadImage("imagen1.jpg");
  images[1] = loadImage("imagen2.jpg");
  images[2] = loadImage("imagen3.jpg");
  images[3] = loadImage("imagen4.jpg");
  images[4] = loadImage("imagen5.jpg");
  font = loadFont("HighTowerText-Reg-48.vlw");
  textFont(font, 28);
}

void draw() {
  background(0);
  println(changeTime);
  println(screen);

  //CAMBIO DE PANTALLAS

  if (botonI) {
    changeTime = 0;
    textY = 480;
    textY1 = 480;
    textY2 = 480;
    textY3 = 480;
    textY4 = 480;
  }
  if (changeTime/60 >= 0) {
    changeTime += 1;
  }
  if (changeTime/60 >= 1 && changeTime/60 <= 3) {
    screen = "inicio";
  }
  if (changeTime/60 >= 3 && changeTime/60 <= 6) {
    screen = "p1";
  }
  if (changeTime/60 >= 6 && changeTime/60 <= 12) {
    screen = "p2";
  }
  if (changeTime/60 >= 12 && changeTime/60 <= 18) {
    screen = "p3";
  }
  if (changeTime/60 >= 18 && changeTime/60 <= 24) {
    screen = "p4";
  }
  if (changeTime/60 >= 24 && changeTime/60 <= 30) {
    screen = "p5";
  }
  if (changeTime/60 >= 30) {
    screen = "fin";
  }


  if (screen.equals("inicio")) {
    fill(255);
    image(images[0], 0, 0, width, height);
    textAlign(CENTER);
    text("Loading...", width/2, height/2);
  }
  if (screen.equals("p1")) {
    textY -= 1;
    image(images[1], 0, 0, width, height);
    fill(255);
    textAlign(CENTER);
    if (textY < height/2) {
      textY = height/2;
    }
    text(texts[0], width/2 - 250, textY, 500, 200);
  }
  if (screen.equals("p2")) {
    image(images[2], 0, 0, width, height);
    fill(255);
    textAlign(CENTER);
    textY1 -= 1;
    if (textY1 < height/2) {
      textY1 = height/2;
    }
    text(texts[1], width/2 - 250, textY1, 500, 200);
  }
  if (screen.equals("p3")) {
    image(images[3], 0, 0, width, height);
    fill(255);
    textAlign(CENTER);
    textY2 -= 1;
    if (textY2 < height/2) {
      textY2 = height/2;
    }
    text(texts[2], width/2 - 250, textY2, 500, 200);
  }
  if (screen.equals("p4")) {
    image(images[4], 0, 0, width, height);
    fill(255);
    textAlign(CENTER);
    textY3 -= 1;
    if (textY3 < height/2) {
      textY3 = height/2;
    }
    text(texts[3], width/2 - 250, textY3, 500, 200);
  }
  if (screen.equals("p5")) {
    image(images[4], 0, 0, width, height);
    fill(255);
    textAlign(CENTER);
    textY4 -= 1;
    if (textY4 < height/2) {
      textY4 = height/2;
    }
    text(texts[4], width/2 - 250, textY4, 500, 200);
  }
  if (screen.equals("fin")) {
    fill(255, 0, 0);
    rect(botonx, botony, botonw, botonh);
    fill(255);
    textAlign(CENTER);
    text("Gracias por ver ;3", width/2, height/2);
    textSize(25);
    text("Reiniciar", botonx+70, botony+35);
    text("(Tocar dos veces :3c)", width/2, botony+75);
  }
}



void mousePressed() {
  if ((mouseX > botonx) && (mouseX < botonx+botonw) && (mouseY > botony) && (mouseY < botony+botonh) && (changeTime/60 >= 30)) {
    botonI = true;
  } else {
    botonI = false;
  }
}
