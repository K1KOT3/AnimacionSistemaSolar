// Declaro que ostento la autoría total y plena de todas las tareas que se llevan a cabo en el presente
// documento. Soy la única persona que ha elaborado cada ejercicio. No he compartido los enunciados
// con nadie y la única ayuda que he recibido ha sido a través del aula de la UOC y su profesorado.

import processing.sound.*; // Importa la librería que permite añadir sonidos

float angulo = 0; // Ángulo para establecer el sistema de referncia
float v = 0.01; // Velocidad de giro en radianes
int control = 0; // Variable de control

SoundFile sonido; // Importa el sonido elegido

void setup() { // Inicia el programa y establece parámetros inciales
  size(600, 600); // Tamaño de la ventana que se va a crear
  background(0); // Color del fondo
  sonido = new SoundFile(this, "sonido.mp3"); // Carga el archivo de sonido
}

void draw() { // En esta función se indica todo lo que se va a ver en la pantalla
  if (control == 1) { // Condicionante de control
    background(0); // Color de fondo
    PImage imagenFondo = loadImage("imagen.jpg"); // Carga la imagen de fondo
    image(imagenFondo, 0, 0, width, height); // Muestra la imagen de fondo
    
    translate(width/2, height/2); // Mueve el origen al centro de la ventana
    
    // Dibuja las órbitas
    noFill();
    stroke(255, 100);
    ellipse(0, 0, 200, 200); // Órbita del planeta principal
    
    float planetaX = cos(angulo) * 100; // Posición X del planeta 
    float planetaY = sin(angulo) * 100; // Posición Y del planeta 
    
    float satelite1X = planetaX + cos(angulo * 2) * 50; // Posición X del primer satélite
    float satelite1Y = planetaY + sin(angulo * 2) * 50; // Posición Y del primer satélite
    
    float satelite2X = planetaX + cos(-angulo * 3) * 75; // Posición X del segundo satélite
    float satelite2Y = planetaY + sin(-angulo * 3) * 75; // Posición Y del segundo satélite
    
    float satelite3X = planetaX + cos(angulo * 4) * 100; // Posición X del tercer satélite
    float satelite3Y = planetaY + sin(angulo * 4) * 100; // Posición Y del tercer satélite
    
    float asteroideX = satelite1X + cos(angulo * -4 + PI) * 25; // Posición X del asteroide
    float asteroideY = satelite1Y + sin(angulo * -4 + PI) * 25; // Posición Y del asteroide
    
    stroke(255, 100);
    ellipse(planetaX, planetaY, 100, 100); // Órbita del primer satélite
    ellipse(planetaX, planetaY, 150, 150); // Órbita del segundo satélite
    ellipse(planetaX, planetaY, 200, 200); // Órbita del tercer satélite
    
    // Dibuja la órbita del asteroide alrededor del primer satélite
    noFill();
    stroke(255, 100);
    ellipse(satelite1X, satelite1Y, 50, 50);
    
    fill(255, 255, 0); // Color del sol
    ellipse(0, 0, 40, 40); // Dibuja el Sol
    
    fill(0, 0, 255); // Color del planeta principal
    ellipse(planetaX, planetaY, 20, 20); // Dibuja el planeta 
    
    fill(255); // Color de los satélites
    ellipse(satelite1X, satelite1Y, 8, 8); // Dibuja el primer satélite
    ellipse(satelite2X, satelite2Y, 10, 10); // Dibuja el segundo satélite
    ellipse(satelite3X, satelite3Y, 20, 20); // Dibuja el tercer satélite
    
    fill(255, 0, 0); // Color del asteroide
    ellipse(asteroideX, asteroideY, 8, 8); // Dibuja el asteroide
    
    angulo += v; // Aumenta el ángulo según la velocidad de giro
    
    // Comprueba s el planeta principal da una vuelta al sol
    if (angulo >= TWO_PI) {
      angulo = 0; // Reinicia el ángulo
      sonido.play(); // Reproduce el sonido
    }
  } else {
    background(0); // Pantalla principal
    fill(255);
    text("Presiona Enter para comenzar la simulación, si no funciona cierra la ventana y prueba otra vez", 20, 20);
    text("Presiona las teclas de flecha para cambiar la velocidad", 20, 40);
  }
}

void keyPressed() { // Condicionante inicial para iniciar la animación y controles de los botones de izq y dcha
  if (keyCode == ENTER) {
    control = 1;
  } else if (keyCode == RIGHT && control == 1) {
    v += 0.01;
  } else if (keyCode == LEFT && control == 1) {
    v -= 0.01;
    if (v < 0) {
      v = 0;
    }
  }
}

// En esta animación, se aplica la ley de gravitación universal y las leyes
// de movimiento, que describen la atracción entre los cuerpos por la fuerza 
// gravitatoria, y establecen que los cuerpos se mueven en trayectorias 
// determinadas por las fuerzas que actúan en ellos.

// En la simulación se utilizan varias funciones para representar visualmente 
// los cuerpos celestes y calcular sus movimientos y trayectorias. La función
// ellipse() se utiliza para pintar las órbitas y los cuerpos en la pantalla. 

// Las funciones trigonométricas cos() y sin() se utilizan para calcular las
// coordenadas de los cuerpos en función del ángulo y las distancias orbitales.

// He optado por no utilizar las funciones pushMatrix() y popMatrix() ya que 
// el movimiento de los cuerpos se calcula directamente con el ángulo
// y no se realizan cambios acumulativos en el sistema.

// La función translate() permite desplazar el origen de coordenadas al centro
// de la ventana sin necesidad de guardar y recuperar sistemas de referencia 
// adicionales.
