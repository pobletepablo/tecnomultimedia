PImage flappy;
PFont fuenteNueva;
int salto;
int boton;
int flappyY = 304;


void setup(){

size (1024,600);
background (0, 162,232);
fuenteNueva=createFont("flappybirdy.tff",12);
textFont(fuenteNueva);
flappy = loadImage( "flappy.png" );
imageMode( CENTER ); 
}

void draw(){
  titulo();
  juego();
}
void titulo(){


if (boton==0){
noStroke();
fill(255);
rect(264, 245, 200, 70);
textSize(100);
text("TecnoBird", 300, 200);
textSize(50);
fill(0);
text("Jugar", 300,300);
println(mouseX,mouseY);
}
}


void mouseClicked(){
  if (mouseX>264 && mouseY>245 && mouseX<464 && mouseY<315 &&boton==0){
    boton=1;
    
}
if (salto==1){
flappyY=flappyY-104;
}
}
void juego (){
  if (boton==1){
    background (0, 162,232);
    image( flappy, 185, flappyY, 100, 55 );
salto();  
perder();
}
}

void salto(){

flappyY=flappyY+2;
  salto=1;
}

void perder(){
  
  if (flappyY>600){
    
    background(0,162,232);
    textSize(100);
    text("GAME OVER", 200, 200);
    boton=31;
  }
}
