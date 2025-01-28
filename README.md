# Simulación de un Sistema Solar en Processing

Este repositorio contiene una animación interactiva desarrollada en **Processing** que simula un sistema solar utilizando las leyes de la física, en particular, la ley de gravitación universal y las leyes del movimiento. Los cuerpos celestes se mueven en órbitas determinadas por fuerzas gravitatorias, representadas visualmente con trayectorias calculadas mediante trigonometría.

## Funcionalidades

1. **Simulación basada en física**:
   - Implementación de la ley de gravitación universal para calcular las trayectorias orbitales.
   - Uso de las funciones trigonométricas `cos()` y `sin()` para determinar las posiciones de los cuerpos.

2. **Visualización gráfica**:
   - Los cuerpos celestes (planetas, lunas y estrella central) son representados con la función `ellipse()`.
   - Las órbitas son trazadas de forma precisa para indicar el movimiento continuo.

3. **Diseño eficiente**:
   - Uso de `translate()` para centrar el sistema sin la necesidad de funciones como `pushMatrix()` o `popMatrix()`.
   - Movimiento calculado directamente a partir de ángulos y distancias orbitales, optimizando la simulación.

## Requisitos

- [Processing IDE](https://processing.org/download) instalado en tu computadora.

## Uso

1. Clona este repositorio:
   ```bash
   git clone https://github.com/k1kot3/AnimacionSistemaSolar.git
   ```
2. Asegúrate de que la imagen de fondo (imagen.jpg) se encuentra en la misma carpeta.
3. Abre el archivo AnimacionSistemaSolar.pde en el IDE de Processing.
4. Ejecuta el programa para observar la simulación en tiempo real.

## Personalización

El programa actualmente puede controlar la velocidad de la simulación con las teclas de izquierda y derecha.

Podría ampliarse ampliarse para:

- Incluir más planetas y lunas con trayectorias únicas.
- Modificar las velocidades y tamaños de los cuerpos celestes.

Las contribuciones son bienvenidas :)

