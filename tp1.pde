PImage barco, barco2, barco3;
int posX, posY;
PFont fuenteBarco;
int pantalla;
float d1;
int r1;
boolean reiniciar;

void setup() {
  size(640, 480);
  barco = loadImage("barco1.jpg");
  barco2 = loadImage("barco2.jpg");
  barco3 = loadImage("barco3.jpg");
  fuenteBarco = loadFont("AgencyFB-Bold-48.vlw");
  textFont(fuenteBarco);
  textSize(45); 
  posX = 3;
  posY = 3;
  pantalla = 1;
  d1 = dist(mouseX, mouseY, 410, 425);
  r1 = 45 / 2; 
  reiniciar = false;
}

void draw() {
  println(frameCount);
  if(frameCount <=308){
    pantalla = 1;
    if(pantalla ==1){
      image(barco, 0, 0, 640, 480);
      fill(165, 0, 0);
      stroke(0);
      strokeWeight(2);
      textAlign(CENTER);
      text("Este es el buque Zero-V, impulsado \n unicamente por hidrogeno", posX-150, 240);
      posX = posX + 3;
      if(posX >=470){
        posX = 470;
      }
    } 
  }
  if(frameCount >=309){
    pantalla = 2;
  }
  if(pantalla == 2){
    image(barco2, 0, 0, 640, 480);
    textSize(35);
    textAlign(CENTER);
    text("Este barco puede estudiar el océano \n sin hacer ruido y sin contaminar, protegiendo la vida \n marina y la calidad del agua.", 320, posY -240);
    posY = posY + 3;  
    if(posY >=340){
      posY = 340;
    }
    if(frameCount >=670){
      pantalla = 3;
      reiniciar = true;
    }
  }
  if(pantalla == 3){
    image(barco3, 0, 0, 640, 480);
    textSize(35);
    textAlign(CENTER);
    fill(255, 0, 0);
    text("La unica desventaja es que este nuevo buque implica \n un 7% más de costes operativos \n y de mantenimiento.", posX+400, 240);
    posX = posX - 5;
    if(posX <=-70){
      posX = -70;
    }
  }
  if(frameCount >=850){
    if (reiniciar== true) {
      rectMode(CENTER);
      rect(410, 425, 280, 45);
      fill(255);
      text("Reiniciar presentación", 410, 437);
      if (mousePressed && dist(mouseX, mouseY, 410, 425) < 45 / 2) {
        frameCount = 0;
        pantalla = 1;
        posX = 3;
        posY = 3;
        reiniciar = false;
      }
    }
  }
}
