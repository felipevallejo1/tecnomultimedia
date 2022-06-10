//Felipe Vallejo
//Legajo 88164/7
//Comisión 2
//Diseño Multimedia
//Link videoexplicación 
int cant = 10;
int ubic;
float tam;
void setup(){
  size(500, 500);

ubic = width/cant;
tam = random(20, ubic);
ellipseMode(CENTER);

}
void draw(){
  background(0);
  for (int x=0; x<cant; x++){
  for(int y=0; y<cant; y++){ float verde = map(x, 0, tam+1, 255, 20);
  if ((x+y)%2==0){
  fill(255);
  } else {
    fill(0, verde, 0);
  }
 
    
  //tam = random(20, ubic);
  ellipse(x*ubic+ubic/2, y*ubic+ubic/2, tam, tam);
  }
  }
  if(keyPressed){
  tam = random(20, ubic);}
 
}
void mousePressed(){
if(mousePressed){
tam = random(20, 20);}
}
        
