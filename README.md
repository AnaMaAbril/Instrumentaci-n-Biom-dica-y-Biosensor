# Instrumentaci-n-Biom-dica-y-Biosensor
La fisiología respiratoria describe los mecanismos mediante los cuales el sistema respiratorio permite el intercambio de gases entre el organismo y el ambiente. Este proceso depende principalmente de la ventilación pulmonar, que es el movimiento de aire hacia dentro y fuera de los pulmones generado por cambios de presión producidos por la acción del diafragma y los músculos intercostales. Durante la inspiración, el aumento del volumen torácico reduce la presión intrapulmonar, permitiendo la entrada de aire; en la espiración ocurre el proceso inverso. Estas variaciones de presión, volumen y flujo de aire constituyen las principales variables físicas asociadas a la respiración. Además, la frecuencia respiratoria y el patrón ventilatorio están regulados por centros nerviosos en el tronco encefálico, que ajustan la ventilación según las necesidades metabólicas del organismo.
La ventilación ocurre gracias a la acción de los músculos respiratorios:
Diafragma (principal músculo)
Músculos intercostales externos
- Inspiración (activa)
El diafragma se contrae y desciende, los intercostales elevan las costillas → aumenta el volumen de la cavidad torácica → disminuye la presión dentro de los pulmones → el aire entra.
- Espiración (pasiva en reposo)
Los músculos se relajan → el volumen torácico disminuye → aumenta la presión pulmonar → el aire sale.

Al-Khalidi et al. (2011) presentan una revisión de los principales métodos utilizados para la monitorización de la frecuencia respiratoria, destacando que este parámetro es uno de los signos vitales más sensibles para la detección temprana de deterioro clínico. Los autores clasifican las técnicas en métodos de contacto y sin contacto. Entre los métodos de contacto se incluyen sensores de impedancia torácica, bandas de esfuerzo respiratorio, capnografía y sensores de flujo de aire, los cuales se basan en la medición de los cambios mecánicos o gaseosos asociados a la ventilación. Por otro lado, los métodos sin contacto emplean tecnologías como visión por computadora, sensores térmicos y radar para detectar el movimiento torácico o el flujo de aire exhalado. La revisión resalta que, aunque los métodos tradicionales suelen ser más precisos, pueden resultar incómodos para el paciente, mientras que las técnicas sin contacto ofrecen mayor confort y aplicabilidad en monitoreo continuo, aunque aún presentan desafíos relacionados con el ruido y la fiabilidad en entornos clínicos.

Vanegas, Igual y Plaza (2020) realizan una revisión sistemática de los sistemas de sensado utilizados para el monitoreo de la respiración, enfocándose en las tecnologías empleadas, la ubicación de los sensores en el cuerpo y los métodos de procesamiento de señal. Los autores destacan que la mayoría de los dispositivos se basan en la detección de los movimientos torácicos y abdominales generados por la ventilación, utilizando sensores como bandas de esfuerzo, acelerómetros, sensores piezoeléctricos y sistemas de bioimpedancia. Además, se analiza cómo los algoritmos de filtrado y procesamiento permiten extraer parámetros clave como la frecuencia respiratoria y el patrón ventilatorio. La revisión resalta que los sistemas portátiles y no invasivos han ganado gran relevancia por su comodidad y aplicabilidad en monitoreo continuo, aunque aún enfrentan retos relacionados con artefactos de movimiento y variabilidad entre sujetos.
El proceso respiratorio genera una serie de variaciones físicas que pueden ser medidas de forma indirecta mediante sensores biomédicos. Durante la ventilación pulmonar se producen cambios cíclicos en el volumen torácico, ocasionados por la contracción y relajación del diafragma y los músculos intercostales. Estos cambios de volumen producen a su vez variaciones en la presión intratorácica y en el flujo de aire que entra y sale de los pulmones. Como consecuencia, también se observa el desplazamiento mecánico de la pared torácica y abdominal, variable comúnmente utilizada en sistemas de monitoreo respiratorio no invasivos. A partir de estas variaciones es posible calcular la frecuencia respiratoria, definida como el número de ciclos respiratorios por minuto, así como analizar el patrón respiratorio, que describe la relación entre las fases de inspiración y espiración. Estas variables físicas constituyen la base para el diseño de sistemas de medición de la respiración, ya que pueden ser detectadas mediante sensores de movimiento, presión, flujo o deformación.

<img width="2048" height="1360" alt="image" src="https://github.com/user-attachments/assets/61e98025-f5e9-4a60-b7cb-d16920d963fd" />


Para la adquisición de la señal respiratoria en este laboratorio se seleccionó un sensor de fuerza resistivo (FSR 402) debido a que este tipo de sensores permite detectar variaciones de presión mecánica generadas por el movimiento torácico durante la ventilación pulmonar. La literatura técnica describe que los sensores FSR funcionan como resistencias variables cuya resistencia disminuye cuando aumenta la fuerza ejercida sobre su superficie, lo que facilita una conversión directa de una variación mecánica en una señal eléctrica medible compatible con un microcontrolador como Arduino. Esta característica ha sido aprovechada en diversas aplicaciones biomédicas donde se requieren mediciones de fuerzas o presiones dinámicas.

En el contexto de monitoreo respiratorio, los movimientos del tórax se han utilizado extensamente como una variable física indicativa de la ventilación, ya que dicha expansión y retracción generan cambios mecánicos detectables por sensores colocados en la región torácica (Vanegas, Igual & Plaza, 2020). Las revisiones sistemáticas de sistemas de sensado señalan que los dispositivos enfocados en medir la variación de presión o deformación del tórax pueden extraer parámetros como frecuencia respiratoria y patrón ventilatorio de manera no invasiva y continua. Por tanto, el uso de un FSR permite transformar esas variaciones mecánicas en cambios de resistencia que, mediante un circuito de acondicionamiento apropiado, se traducen en señales digitales procesables por un Arduino para la estimación de la frecuencia respiratoria (Vanegas, Igual & Plaza, 2020).

Los sensores FSR presentan ventajas importantes en aplicaciones biomédicas portátiles: son delgados, flexibles, de bajo costo y de fácil integración electrónica, ya que su funcionamiento requiere únicamente un divisor de voltaje para convertir los cambios de resistencia en variaciones de voltaje medibles por un convertidor análogo-digital. Estudios técnicos han demostrado que, mediante una calibración adecuada, la relación entre fuerza aplicada y resistencia puede utilizarse de manera consistente para aplicaciones de monitoreo continuo. Por estas razones, el FSR 402 constituye una alternativa viable y funcional para la medición indirecta de la frecuencia respiratoria basada en la detección del movimiento torácico.

<img width="1080" height="487" alt="image" src="https://github.com/user-attachments/assets/95e06c8f-3f35-4c42-952d-85e01ba3075e" />


El sensor FSR 402 se integra al sistema de medición mediante un circuito divisor de voltaje, el cual permite transformar las variaciones de resistencia del sensor en variaciones de voltaje medibles por el microcontrolador. El FSR es un sensor cuya resistencia disminuye cuando aumenta la presión aplicada sobre su superficie. Para poder leer este cambio, se conecta en serie con una resistencia fija de 10 kΩ, formando un divisor de voltaje alimentado con 3.3 V, tensión suministrada por el microcontrolador ESP32.

El punto medio del divisor de voltaje se conecta a la entrada analógica GPIO 34 (D34) del ESP32. De esta manera, cuando la presión sobre el sensor cambia debido al movimiento respiratorio, también cambia la resistencia del FSR, lo que modifica el voltaje en el punto de lectura. Este voltaje es convertido a un valor digital por el conversor análogo-digital (ADC) interno del ESP32. Posteriormente, los datos digitalizados pueden enviarse al computador mediante comunicación serial (USB) para su visualización y procesamiento.



Para captar adecuadamente el movimiento respiratorio, el sensor FSR 402 se coloca sobre la parte superior del abdomen o la zona inferior del tórax, cerca de la región del diafragma. Se utiliza una venda elástica para mantener el sensor en contacto firme pero cómodo con la superficie del cuerpo. Esta sujeción permite que el sensor detecte las variaciones de presión generadas por la expansión y contracción de la pared torácica durante la respiración.

Durante la inspiración, el descenso del diafragma y la expansión del tórax producen un aumento de presión contra el sensor; durante la espiración, la presión disminuye. Estas variaciones mecánicas se traducen en cambios de resistencia en el FSR y, por lo tanto, en variaciones de voltaje en el circuito. La señal obtenida corresponde a una forma de onda periódica asociada al ciclo respiratorio. Una vez digitalizada por el ESP32, esta señal se envía al computador, donde puede ser graficada y analizada para determinar parámetros como la frecuencia respiratoria



Inicialmente se desarrolló un programa en el entorno Arduino IDE para configurar el microcontrolador ESP32 como sistema de adquisición de datos. En este programa se estableció la lectura continua de la señal analógica proveniente del sensor FSR 402 a través del pin GPIO 34, utilizando el conversor análogo-digital (ADC) interno del microcontrolador. El código se diseñó para muestrear la señal a intervalos regulares y enviar los valores digitalizados en tiempo real al computador mediante comunicación serial a través del puerto USB.

Esta etapa permitió verificar el correcto funcionamiento del sensor, del circuito divisor de voltaje y de la lectura analógica, asegurando que las variaciones de presión generadas por la respiración se reflejaran en cambios detectables en la señal adquirida.

<img width="632" height="430" alt="image" src="https://github.com/user-attachments/assets/c95d8756-a4ee-4ba9-8c30-77ab750b3752" />

Posteriormente, los datos enviados por el ESP32 fueron recibidos en MATLAB, donde se implementó un script para la lectura del puerto serial y la visualización de la señal respiratoria en tiempo real. El programa en MATLAB permitió graficar de manera dinámica la señal proveniente del sensor, mostrando las variaciones asociadas a los ciclos de inspiración y espiración.

Además, se incorporó una funcionalidad que permite al usuario seleccionar el tiempo de duración de la adquisición, de modo que la captura de datos pudiera adaptarse a diferentes pruebas experimentales. Durante el tiempo establecido, MATLAB almacena los valores recibidos y los representa gráficamente de forma continua, lo que facilita la observación del comportamiento respiratorio y el posterior análisis de parámetros como la frecuencia respiratoria.

Configuración del sistema

El sistema de medición está compuesto por:

- Sensor de respiración (salida analógica proporcional al movimiento respiratorio)

- Microcontrolador con convertidor análogo–digital (ADC de 12 bits)

- Comunicación serial vía puerto COM34 a 115200 baudios

- Entorno MATLAB para visualización, almacenamiento y procesamiento de datos


Parámetros de conversión:

- Voltaje de referencia: 𝑉𝑟𝑒𝑓=3.3V

- Resolución del ADC: 4095 niveles (12 bits)

- La conversión de los datos digitales a voltaje se realizó mediante
V=(bits*v_ref)/4095


Se implementó un código en MATLAB que realiza las siguientes funciones:

1. Establece la conexión serial con el microcontrolador.

2. Lee continuamente los valores digitales enviados por el ADC.

3. Convierte los valores digitales a voltaje.

4. Asigna una marca de tiempo a cada muestra usando la función tic–toc.

5. Grafica la señal en tiempo real mediante un buffer deslizante de 300 muestras.

6. Guarda los datos de tiempo y voltaje en archivos .mat para su posterior análisis.

Señal respiratoria en reposo

El sujeto permaneció en estado de reposo, respirando de manera natural y sin hablar. La señal obtenida presenta un comportamiento periódico relativamente estable, con variaciones suaves de amplitud asociadas a los ciclos de inspiración y espiración.

Características:

- Frecuencia respiratoria baja y regular

- Amplitud moderada

- Forma de onda suave y repetitiva


Los datos fueron almacenados en:

senal_respiratoria_reposo.mat

Señal respiratoria hablando

Durante esta medición, el sujeto habló continuamente. Esto introduce perturbaciones en el patrón respiratorio debido al control voluntario de la respiración para la producción de voz.

Características observadas:

- rregularidad en la frecuencia respiratoria

- Cambios bruscos de amplitud

- Pausas respiratorias más cortas o forzadas

- Mayor variabilidad en la señal


Los datos fueron almacenados en:

senal_respiratoria_Hablando.mat

Visualización de las señales

Las gráficas en el dominio del tiempo permiten identificar:

- Periodicidad de la respiración

- Amplitud de los ciclos respiratorios

- Regularidad del patrón respiratorio


En reposo, la señal suele ser más periódica y estable. En cambio, al hablar, se observan interrupciones y variaciones asociadas a la fonación.

Frecuencia respiratoria

La frecuencia respiratoria se puede estimar midiendo el tiempo entre picos consecutivos de la señal:

𝐹𝑅=60*(#picos/𝑇)

Donde:

𝑇 es el período promedio entre respiraciones (segundos)

FR se expresa en respiraciones por minuto (rpm)

Comparación:

En reposo: frecuencia más baja y estable

Hablando: frecuencia variable, con pausas o respiraciones más rápidas

Amplitud de la señal:

- La amplitud está relacionada con la profundidad de la respiración.

- En reposo: amplitud relativamente constante

- Hablando: amplitud irregular, con respiraciones más superficiales o forzadas


Esto se debe a que el flujo de aire se regula para producir voz, no solo para ventilación pulmonar.

Variabilidad respiratoria

La variabilidad puede evaluarse observando cambios en:

- Distancia entre picos

- Altura de los picos

- Forma del ciclo respiratorio
  

Hablar incrementa la variabilidad porque la respiración pasa de ser automática a estar parcialmente controlada de forma voluntaria.

Interpretación fisiológica

Los resultados muestran cómo el sistema respiratorio se adapta a diferentes demandas funcionales:

En reposo: control automático dominado por centros respiratorios del tronco encefálico.

Hablando: intervención de control cortical voluntario, modificando el patrón respiratorio para permitir la fonación.

Esto evidencia la relación entre respiración y producción del habla, donde la espiración se prolonga y la inspiración se vuelve más rápida.

REFERENCIAS 

- https://pubmed.ncbi.nlm.nih.gov/22154694/

- https://pmc.ncbi.nlm.nih.gov/articles/PMC7570710/?utm_source.com

- https://pubmed.ncbi.nlm.nih.gov/21560260/

- https://booksmedicos.org/west-fisiologia-respiratoria-fundamentos-10a-edicion/

- https://www.mdpi.com/1424-8220/20/18/5446
  
- https://repository.udistrital.edu.co/server/api/core/bitstreams/afbc8df0-5093-424d-ab25-ebc7d4725f16/content
  
- https://revistamedica.com/dispositivos-monitorizacion-tiempo-real-efectividad/
