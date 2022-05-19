//Vallejo Felip TP2 
String frase;
int posY, py;
PFont fuente;
PImage fondo, fondo1, fondo2, fondo3, fondo4;


void setup(){
  size(800, 500);
  posY = height; 
  fondo = loadImage("imagenp.png");
  fondo1 = loadImage("imagenp1.png");
  fondo2 = loadImage("imagenp2.png");
  fondo3 = loadImage("imagenp3.png");
  fondo4 = loadImage("imagenp4.png");
  imageMode(CENTER);
  fill(0);
  textSize(25);
  textAlign(CENTER);
  textFont(loadFont("CenturyGothic-Bold-48.vlw"));
  py = 400;
  
}
  
void draw(){
  background(fondo);
  if(mouseX <300 && mouseY <300){
      background(fondo3);
}
 
  textFont(loadFont("CenturyGothic-Bold-48.vlw"));
  println(frameCount);
  if(frameCount > 0 && frameCount <= 620)
  {fill(0);
   text("Rockstar North \n Grand Theft Auto \n San Andreas", width/2, posY);
} else if(frameCount >=621 && frameCount <= 1200){ 
  background(fondo4);
  fill(255);
  text("-Producer- \n Leslie Benzies", width/2, 600+posY);

} else if (frameCount >= 1201 && frameCount <= 1900){
 
  background(fondo1);
  fill(255);
   text("-Written by- \n Dan Houser \n James Worral \n DJ Pooh", width/2, 1200+posY);

 
 
} else if (frameCount >= 1901 && frameCount <= 2550){
  background(fondo2);
 text("THE CAST \n Carl CJ Johnson \n Sean Sweet Johnson \n Kendl Johnson \n Melvin Big Smoke Harris", width/2, 1800+posY);  
}else if(frameCount >= 2551 || frameCount < 2900){
  background(fondo3);
  text("- Characters Art-  \n  Alan Davidson \n Alisdair Wood \n Rick Stirling \n Toks Solarin \n -------------------- \n -Countryside Art-  \n Michael Pirso \n Scott Wilson  \n Stuart Macdonald \n -Animation- \n Gus Braid \n Iwan Scheer \n Mark Tennant \n Terry Kemy", width/2, 2400+posY);

} 



println(mouseX, mouseY); 
posY--;
}

void mouseClicked(){
    setup();
    frameCount = 0;
    
  

}
