//Intro STRANGER THINGS

PFont titulo;

//A continuación declare variables para utilizar a modo de contador, con el fin de tener un movimiento mas rapido que el que otorga "frameCount"

int SizeA=7000;
int tamTexto=400;
int Nheight=500;
int Gwidth=700;
int Swidth=224;
int contadorR;
int contadorT=-600;
int contadorS=1200;
int contadorN=900;
int contadorE=-300;


void setup(){
size (1024,600); //Declaramos el tamaño de la pantalla

titulo = loadFont ("BenguiatBold-50.vlw"); //Declaramos la fuente
println("texto");
fill(237, 28, 36); //Coloreamos las letras de color rojo mas oscuro
textFont(titulo); //Llamamos a la funcion del titulo
textAlign(CENTER, CENTER);
frameRate( 10 );

}

void draw(){ //Para facilitar el trabajo, use funciones para cada pantalla
nombre();
a();
n();
rt();
sg();
rs();
tatr();
ng();
stranger();
}
//-----------------------------------------------------------
  void nombre(){
  background(0);
  fill(255);
  textSize(30);
  text("TECNOLOGIA MULTIMEDIAL", width/2, height/2);
  textAlign(CENTER, CENTER);
//  fill()


  }

//-----------------------------------------------------------
void a(){
  if (frameCount>50)
  {
  fill(237, 28, 36);
  background(0);
  textSize(SizeA); //La primera pantalla es la letra "A" con un tamaño muy grande que se va alejando
  text("A", 800, 650); //La letra esta ubicada en estas coordenadas porque no esta exactamente en el medio
  SizeA=SizeA-40; //Variable para reducir el tamaño de manera mas rapida
  
  fill(255);
  textSize(30);
  text("PABLO POBLETE", width/2, height/2);
  textAlign(CENTER, CENTER);

  }
}
//-----------------------------------------------------------
void n(){
    if (frameCount>70) //A partir de aca se tuliza el "frameCount" a modo de reloj para cada pantalla
{
    fill(237, 28, 36);

  background(0);
  textSize(1600);
  Nheight=Nheight+3; //Con esta variable hacemos que la letra se deslize mas rapido hacia abajo
  text("N", 612-frameCount, Nheight);
}
}
//-----------------------------------------------------------
void rt(){
    if (frameCount>90)
{
  background(0);
  textSize(2000);
  text("R", 300-frameCount, 700);
  text("T", 1200+frameCount, 100);
}
}
//-----------------------------------------------------------
void sg()
{
if (frameCount>100)
{
  Swidth= Swidth+10;
  Gwidth= Gwidth-10;
  background(0);
  textSize(1000);
  text("S", Swidth, 800);
  text("G", Gwidth, -200);
}
}
//-----------------------------------------------------------
void rs(){
if (frameCount>110)
{
  background(0);
  textSize(2000);
  text("R", -50-frameCount, 700-frameCount );
  textSize(1500-frameCount);
  text("S", 1100-frameCount, 600-frameCount);
}
}
//-----------------------------------------------------------
void tatr(){
  if (frameCount>120){
    background(0);
    textSize(500);
    text("T", 200-frameCount, -50+frameCount);
    text("A", 824+frameCount, -50+frameCount);
    text("T", 100+frameCount, 650+frameCount);
    text("R", 924-frameCount, 650+frameCount);
  }
}
//-----------------------------------------------------------
void ng(){
 if (frameCount>130){
 background(0);
 textSize(500);
 fill(frameCount,0,0); //Utilizamos un "fill" con un "frameCount" para hacer un desvanecimiento
 text("N", 150+frameCount, height/2);
 text("G", 874-frameCount, height/2);
}
}
//-----------------------------------------------------------
void stranger(){ 
  if (frameCount>140){
  background(0);
  fill(237, 28, 36); //Volvemos al color original ya que se queda guardado el "fill" anterior
  
  //Aca se define cada contador con su respectiva "velocidad", mientras mayor sea el numero mas rapido se mueve
  tamTexto=tamTexto-1;
  contadorN=contadorN-5;
  contadorR=contadorR+5;
  contadorT=contadorT+4;
  contadorS=contadorS-3;
  contadorE=contadorE+3;
  
  textSize(tamTexto); //Para que todos los textos se muevan a la par utilizamos una variable
  textAlign(CENTER);
  
  //A modo de facilitar el trabajo, aproveche los espacios en blanco para definir la separacion entre las letras
  text("S    ANG  R",width/2, height/2);
  text("  R     ",-100+contadorR, height/2);
  text("    I       ",width/2, height/2+tamTexto);
  text("         S ",width/2, height/2+tamTexto);
  text("T           ",width/2, height/2+tamTexto);
  text("  N  ",width/2, contadorN);
  text("  T             ",width/2, contadorT);
  text("            G        ",width/2, contadorS);
  text("H       ",width/2, contadorS);
  text("          E",width/2, contadorE);
  
  if(contadorN<653){ // Utilizamos los contadores como relojes para parar las letras de manera alineada gracias a estas condicionales, se suma/resta el valor opuesto para que el contador quede en 0
    contadorN=contadorN+4;
  }
  if (tamTexto<335){
    contadorR=contadorR-4;
  }
  if (tamTexto<176){
    contadorT=contadorT-4;
  }
  if (tamTexto<200){
    contadorE=contadorE-3;
  }
  if (contadorS<446){
    contadorS=contadorS+3;
  }
  if (tamTexto<150){ //Con esta condicional paramos el tamaño de todos de todas la letras y se deja la pantalla estatica
    tamTexto=tamTexto+1;
    contadorR=contadorR-1;
    contadorN=contadorN+1;

  }
  }
  }
