 PImage [] sprite = new PImage[3];
float x=230, y=250 , xn=2,m=0, r = 0;
boolean rotacion = true;
PImage imagen;
int estado = 1;

void setup(){
  size(534,657);
  imagen = loadImage("lacabaña.jpg");
  image(imagen,0,0);
  stroke (225);
  smooth();

}

void draw(){
  switch(estado){
    case 1:// Dibujo puente
      rect(x,400,4,+m);
      break;
    case 2: //rotacion
          image(imagen,0,0);
          translate(x,400);
          rotate(r/2); r += 0.05; 
          rect(0,0,4,m);
          //println(r);
          if(r>PI){
             estado = 0;
             rotacion = false;
          }else{
            rotacion = true; 
          }
      break;
  }
    
}

void keyPressed( ){
  
  if (key == ' '){
    m=m-3;
  }
}
   
void keyReleased(){
  if (key == ' '){
    if(rotacion){
     estado = 2;
    }
  }
}