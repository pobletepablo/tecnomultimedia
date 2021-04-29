//Trabajo Práctico Nº1 "Circulo Cromatico" - Poblete Pablo - Comisión 2

void setup(){

 size(400,400); //Establecemos un Tamaño de 400,400
 smooth();
 noStroke(); //Sacamos el outline
}
void draw(){
  rect( 0, 0, width, height); //Ponemos el fondo en blanco
  
  fill(179,3,244); //Violeta-Magenta
  circle (110,165,80);
  
  fill(60,3,244); //Violeta-Azulado
  circle (110,235,80); 
  
  fill(255,176,0); //Naranja-Amarillento
  circle (290,165,80);
  
  fill(190,222,10); //Verde-Amarillento
  circle (290,235,80);  
  
  fill(227,0,82); //Rojo-Violeta
  circle (165, 110,80);
  
  fill(0,143,57); 
  circle (235, 290,80); //Verde-Oscuro
  
  fill(0,139,139); //Cyan-Oscuro
  circle (165, 290,80);
  
  fill(225,35,0); //Naranja-Oscuro
  circle (235, 110,80);
  
  fill(0,255,255); //Cyan
  circle (200,300,80);

  fill(76,40,130); //Violeta
  circle (100,200,80);

  fill(255, 225, 0); //Naranja
  circle (300,200,80);
    
  fill(255,0,0); //Rojo
  circle (200,100,80);
  
  fill(255,64,0); //Amarillo
  circle (270,130,80);
  
  fill(0,255,0); //Verde
  circle (270,270,80);
  
  fill(255,0,255); //Rosa
  circle (130,130,80);
  
  fill(0,0,255); //Azul
  circle (130,270,80);
  
  fill(255);
  circle (200,200,170); //Circulo de color blanco que va en el medio
}
