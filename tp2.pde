int cant = 6;
float rotation = 0;
boolean cambiarColores = false;
PImage imagen;

void setup() {
  size(800, 400);
  imagen = loadImage("shutterstockimage.jpeg");
}

void draw() {
  background(255);
  image(imagen, 0, 0, 400, 400);
  pushMatrix();
  translate(400, 0);
  cuadrados();
  popMatrix();

  pushMatrix();
  translate(800, 0);
  rotate(PI/2);
  cuadrados();
  popMatrix();

  pushMatrix();
  translate(600, 200);
  rotate(PI/2);
  cuadrados();
  popMatrix();

  pushMatrix();
  translate(600, 200);
  cuadrados();
  popMatrix();

  float mappedRotation = map(mouseX, 0, width, -PI, PI);
  rotation = mappedRotation;

  pushMatrix();
  translate(600, 200);
  rotate(rotation);

  for (int c = 0; c < cant; c++) {
    float diam = map(c, 0, cant - 1, 240, 20);
    if (cambiarColores) {
      if (c % 2 == 0) {
        fill(0, 0, 255); // Color azul
      } else {
        fill(255, 255, 0); // Color amarillo
      }
    } else {
      if (c % 2 == 0) {
        fill(0);
      } else {
        fill(255);
      }
    }

    ellipse(0, 0, diam, diam);
  }
  
  popMatrix();
}

void cuadrados() {
  for (int x = 0; x < 10; x++) {
    if (x % 2 == 0) {
      fill(0);
    } else {
      fill(255);
    }
    rect(0, x * 20, 200, 20);
  }
}

void mouseClicked() {
  cambiarColores = !cambiarColores;
}
