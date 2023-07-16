//Vallejo Felipe | 88164/7 | Link youtube: https://youtu.be/in_WkZ9GZsI


int pantallaActual = 0; 
int numPantallas = 13;
PFont fuente;
PImage pantalla1, pantalla2, pantalla3, pantalla4, pantalla5, pantalla6, pantalla7, pantalla8, pantalla9, pantalla10, pantalla11, pantalla12, pantalla13;

void setup() {
  size(600, 600);
  textAlign(CENTER, CENTER);
  fuente = createFont("Alice_in_Wonderland_3.ttf", 40);
  pantalla1 = loadImage("aliciaPresentacion.jpg");
  pantalla2 = loadImage("aliciaEntraHoyo.jpg");
  pantalla3 = loadImage("aliciaSeCae.jpg");
  pantalla4 = loadImage("bosqueAlicia.jpg");
  pantalla5 = loadImage("aliciaIzquierda.jpg");
  pantalla6 = loadImage("aliciaDerecha.jpg");
  pantalla7 = loadImage("elGatoAparece.jpg");
  pantalla8 = loadImage("aliciaReina.jpg");
  pantalla9 = loadImage("reinaSeEnoja.jpg");
  pantalla10 = loadImage("aliciaConOruga.jpg");
  pantalla11 = loadImage("aliciaDerecha.jpg");
  pantalla12 = loadImage("AliciaFinal.jpg");
  pantalla13 = loadImage("reinaPinta.jpg");
}

void draw() {
  background(220);
  textFont(fuente);
  println("estoy en la pantalla " + pantallaActual);
  
  if (pantallaActual == 0) {
    image(pantalla1, 0, 0, width, height);

    
    float botonX = width / 2;
    float botonY = height / 2 + 120;
    float radio = 50;

 

    
    rectMode(CENTER);
    fill(255);
    strokeWeight(0);
    rect(botonX, botonY, radio * 2, radio);

    
    textSize(28);
    fill(0);
    text("Comenzar", botonX, botonY);
  } else {
    // 
    switch (pantallaActual) {
      case 1:
        image(pantalla2, 0, 0, width, height);
        textAlign(CENTER);
        fill(255);
        textSize(40);
        text("Alicia andaba tranquila por el bosque, hasta \n que vio un hoyo bajo un misterioso arbol", width/2, height/2 - 250);
        break;

      case 2:
        image(pantalla3, 0, 0, width, height);
        fill(255);
        textSize(40);
        text("Sintió curiosidad y decidió entrar, pero \n apenas se asomó, cayó hacia el fondo del arbol ", width/2, height/2 - 200);
        break;

     

      case 4:
        image(pantalla5, 0, 0, width, height);
        fill(0, 255, 0);
        textSize(26);
        text("Una vez que cayó, fue allí donde se encontró con los gemelos \n Tweedledum y Tweedledee  que, tras ver a Alicia desesperada, ofrecieron \n ayudarla para salir del bosque y volver a su casa ", width/2, height/2 - 200);
        textSize(30);
        text("Opcion 1: Tomar su consejo y dejarlos que te ayuden a regresar ", width/2, height/2 - 60);
        text("Opcion 2: Ignorarlos y encontra una salida por tu cuenta ", width/2, height/2 +30);
        
        break;


      case 8:
        image(pantalla9, 0, 0, width, height);
        fill(255);
        textSize(30);
        text("¡Oh no! Los gemelos te tendieron una trampa \n y te entregaron a la reina,  no podrás regresar a casa ", width/2, height/2 - 250);
        break;

      case 9:
        image(pantalla10, 0, 0, width, height);
        fill(255);
        textSize(32);
        text("Alicia se encontró con una sabia Oruga \n que le indicó el camino hacia afuera", width/2, height/2 - 200);
        break;

      case 10:
        image(pantalla11, 0, 0, width, height);
        fill(255);
        textSize(32);
        text("Yendose de allí, Alicia se encontró con unas criaturas \n del bosque que la invitaron a tomar el té \n antes de mostrarle la salida", width/2, height/2 - 260);
        
        fill(0,0,255);
        
        text("Opcion 1: Aceptar el té", width/2, height/2 );
        text("Opcion 2: Negar el té y buscar la salida", width/2, height/2 + 50);
        
        break;

      case 11:
        image(pantalla12, 0, 0, width, height);
        fill(255);
        
        textSize(26);
        text("Alicia pudo regresar a su casa gracias a la ayuda \n de las criaturas del bosque, luego de tomar el té", width/2, height/2 - 200);
        break;
        
     case 12:
        image(pantalla7, 0, 0, width, height);
        fill(255);
        textSize(30);
        text("Trás rechazar el té, Alicia se encontró \n con un misterioso gato que le pediría que la acompañe", width/2, height/2 - 100);
        break;
        
     case 13:
        image(pantalla13, 0, 0, width, height);
        fill(255);
        textSize(26);
        text("El Gato te guió hasta la reina, y en un muy mal momento \n está muy enojada por cómo quedaron las rosas \n debes aprender en quien confiar y en quien no", width/2, height/2);
        
       
        float botonX = width / 2;
        float botonY = height / 2 + 120;
        float radio = 50;
        
       
        
        
        rectMode(CENTER);
        fill(255);
        strokeWeight(0);
        rect(botonX, botonY, radio * 2, radio);
        
        // Dibujar etiqueta del botón
        textSize(28);
        fill(0);
        text("Finalizar", botonX, botonY);
        
        break;
        
        
        case 14:
        image(pantalla8, 0, 0, width, height);
        fill(255);
        textSize(26);
        text("Nuevamente fuiste traicionado, tienes que aprender \n a saber en quien confiar y en quien no", width/2, height/2 - 100);
        break;
    }
  
    mostrarOpciones();
  }
}

void mousePressed() {
  if (pantallaActual == 0) {
    float botonX = width / 2;
    float botonY = height / 2 + 120;
    float radio = 50;

    if (dist(mouseX, mouseY, botonX, botonY) < radio) {
      pantallaActual = 1; //
    }
  } else if (pantallaActual == 8) {
    float botonX = width / 2;
    float botonY = height / 2 + 120;
    float radio = 50;

    if (dist(mouseX, mouseY, botonX, botonY) < radio) {
      pantallaActual = 0; 
    }
  } else {
    if (pantallaActual < numPantallas) {
      int opcionesPorPantalla = 2;
      int pantallaSiguiente = (pantallaActual - 1) * opcionesPorPantalla + 1;
      boolean mostrarBotonSiguiente = true;
      
      if (pantallaActual == 4 || pantallaActual == 7) {
        mostrarBotonSiguiente = false;
        
       
        float opcion1X = width / 2;
        float opcion1Y = height / 2 + 120;
        float opcion1Radio = 50;
        
        if (dist(mouseX, mouseY, opcion1X, opcion1Y) < opcion1Radio) {
          pantallaActual = 8; 
        }
        
        //Opción 2
        float opcion2X = width / 2;
        float opcion2Y = opcion1Y + 120;
        float opcion2Radio = 50;
        
        if (dist(mouseX, mouseY, opcion2X, opcion2Y) < opcion2Radio) {
          pantallaActual = 9; 
        }
      } else if (pantallaActual == 9) {
        mostrarBotonSiguiente = false;
        
        //Siguiente
        float siguienteX = width / 2;
        float siguienteY = height / 2 + 120;
        float siguienteRadio = 50;
        
        if (dist(mouseX, mouseY, siguienteX, siguienteY) < siguienteRadio) {
          pantallaActual = 10; // 
        }
      } else if (pantallaActual == 10) {
        mostrarBotonSiguiente = false;
        
        
        float opcion1X = width / 2;
        float opcion1Y = height / 2 + 120;
        float opcion1Radio = 50;
        
        if (dist(mouseX, mouseY, opcion1X, opcion1Y) < opcion1Radio) {
          pantallaActual = 11; //
        }
        
        //Opción 2
        float opcion2X = width / 2;
        float opcion2Y = opcion1Y + 120;
        float opcion2Radio = 50;
        
        if (dist(mouseX, mouseY, opcion2X, opcion2Y) < opcion2Radio) {
          pantallaActual = 12; // Ir a la pantalla 12 
        }
      } else if (pantallaActual == 11) {
        mostrarBotonSiguiente = false;
        
        //
        float finalizarX = width / 2;
        float finalizarY = height / 2 + 120;
        float finalizarRadio = 50;
        
        if (dist(mouseX, mouseY, finalizarX, finalizarY) < finalizarRadio) {
          pantallaActual = 0; // Ir a la pantalla 0
        }
      }
      
      if (mostrarBotonSiguiente) {
        for (int i = 1; i <= opcionesPorPantalla; i++) {
          float botonX = width / 2;
          float botonY = height / 2 + (i * 120);
          float radio = 50;
          if (dist(mouseX, mouseY, botonX, botonY) < radio && mouseX > botonX - radio && mouseX < botonX + radio && mouseY > botonY - radio && mouseY < botonY + radio) {
            pantallaActual = pantallaSiguiente + i;
            break;
          }
        }
      }
      
      if (pantallaActual > numPantallas) {
        pantallaActual = numPantallas; 
      }
    } else {
      if (dist(mouseX, mouseY, width/2, height/2 + 120) < 50) {
        reiniciarAventura(); 
      }
    }
  }
}

void mostrarOpciones() {
  int opcionesPorPantalla = 2;
  boolean mostrarBotones = true;
  
  if (pantallaActual == 0 || pantallaActual == 8) {
    mostrarBotones = false;
  }
  
  for (int i = 1; i <= opcionesPorPantalla; i++) {
    float botonX = width / 2;
    float botonY = height / 2 + (i * 120);

    if (pantallaActual == 0 && i == 1) {
      //Comenzar
      fill(200);
      rectMode(CENTER);
      rect(botonX, botonY, 150, 50);

      textSize(28);
      fill(0);
      text("Comenzar", botonX, botonY);
    } else if ((pantallaActual == 4 || pantallaActual == 7 || pantallaActual == 10) && i <= opcionesPorPantalla) {
      // Opción 1 y Opción 2
      if (mostrarBotones) {
        fill(200);
        rectMode(CENTER);
        rect(botonX, botonY, 150, 50);

        textSize(28);
        fill(0);
        text("Opción " + i, botonX, botonY);
      }
    } else if (pantallaActual != 0 && pantallaActual != 8 && pantallaActual !=11 && pantallaActual !=13 && mostrarBotones) {
      // "Siguiente"
      if (i == 1) {
        fill(200);
        rectMode(CENTER);
        rect(botonX, botonY, 100, 50);

        textSize(28);
        fill(0);
        text("Siguiente", botonX, botonY);
      }
    } else if (pantallaActual == 8 && i == 1) {
      // Botón de Finalizar
      fill(200);
      rectMode(CENTER);
      rect(botonX, botonY, 150, 50);

      textSize(28);
      fill(0);
      text("Finalizar", botonX, botonY);
    } else if (pantallaActual == 11 && i == 1) {
      //Finalizar 11
      fill(200);
      rectMode(CENTER);
      rect(botonX, botonY, 150, 50);

      textSize(28);
      fill(0);
      text("Finalizar", botonX, botonY);
    }
  }
}

void reiniciarAventura() {
  pantallaActual = 0; // 
}
