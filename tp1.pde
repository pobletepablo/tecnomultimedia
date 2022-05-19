//Poblete Pablo // Comisión 2 // TP N°0

void setup(){
  size (800,600); //Definimos el tamaño de la pantalla
  background(31,37,166); //pintamos el fondo de azul oscuro
  noStroke(); //Sacamos el outline
}
void draw(){
fill(255);

//Cuerpo del muñeco
 circle(width/2,600, 400);
 circle(width/2, height/2, 300);
// Ojos 
 fill(50); //usamos un solo fill ya que todos los "circles" posteriores usan el mismo color
 circle(340, 270, 30) ;
 circle(450, 260, 60) ;
//Boca
 circle(320, 370, 20) ;
 circle(350, 380, 16) ;
 circle(380, 385, 20) ;
 circle(410, 385, 17) ;
 circle(442, 375, 25) ;
 circle(470, 355, 20) ;
 //Botones
 circle(400, 500, 40) ;
 circle(400, 550, 30) ;
 // Nariz
 fill(255, 128, 64);
 triangle(360, 300, 250, 333, 370, 333);
 //sombrero
 fill(0); //pintamos de negro el sombrero
 ellipse(400, 170, 300, 60); 
 rect(320,20, 170, 150);
}
