//https://www.youtube.com/watch?v=XCWhTG65A0s&ab_channel=PabloPoblete

PImage ilusion;
PImage ilusion2;
PImage ilusion3;
PImage ilusion4;
PImage ilusion5;
PImage ilusion6;

float pantalla;
int contador;

void setup(){
  size (1024,791); //Declaramos el tamaño de la pantalla
  pantalla =random(0, 6); //Utilizamos un Random para que cada vez que se ejecute el programa, aparezca una pantalla diferente
 ilusion = loadImage("ilusion.jpg"); //Asignamos las imagenes a las variables declaradas previamente
  ilusion2 = loadImage("ilusion2.jpg");
    ilusion3 = loadImage("ilusion3.jpg");
      ilusion4 = loadImage("ilusion4.jpg");
        ilusion5 = loadImage("ilusion5.jpg");
          ilusion6 = loadImage("ilusion6.jpg");
 frameRate(30); //Definimos el frameRate a 30
}

void draw(){
//Como el random maneja valores flotantes, lo que hacemos a continuación es detectar si el valor esta entre 2 numeros   
   if (pantalla < 1){
  image(ilusion,0 ,0);
  }
   else if (pantalla < 2 && pantalla > 1){
  image(ilusion2,0 ,0);
  }
    else if (pantalla < 3 && pantalla > 2){
  image(ilusion3,0 ,0);
  }
    else if (pantalla < 4 && pantalla > 3){
  image(ilusion4,0 ,0);
  }   
    else if (pantalla < 5 && pantalla > 4){
  image(ilusion5,0 ,0);
  }
    else if (pantalla < 6 && pantalla > 5){
  image(ilusion6,0 ,0);
  }    
   contador= contador +1; // Este contador cumple la funcion de hacer que las lineas
   for(int i=-2000; i<width; i+=19){ //Utilizamos un for para crear una serie de lineas
   strokeWeight(16); //Definimos el grosor de las lineas
   line (i+contador, 0, i+contador, height+contador);  //Aca hacemos uso del la variable contador para que dichas lineas se muevan hacia la derecha y generen la ilusión
     println(i);

}
}
   void mouseClicked(){ //Cada vez que presionamos el mouse, cambia la pantalla y reiniciamos el contador a 0
   pantalla= random(0,6);   
   contador = 0;
   }

    void keyPressed(){ //Cuando presionamos la tecla "espacio" se reinicia la variable del contador
      if (key==' '){
   contador = 0;
   }  
      if (key=='+'){ //Cuando presionamos la tecla "+" el movimiento es mas rapido
   contador = contador+2;
   }  
         if (key=='-'){ //Cuando presionamos la tecla "-" el movimiento es mas lento/retrocede
   contador = contador-2;
   }  
    }
