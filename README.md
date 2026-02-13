

# LABORATORIO #1: MONITOREO DEL PATRÓN Y FRECUENCIA RESPIRATORIA

# LEIDY VALENTINA RODRÍGUEZ GÓMEZ 

# ANA MARIA ABRIL GÓMEZ

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

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/0095349a-8498-4a8e-837e-25d47e810434" />


Para captar adecuadamente el movimiento respiratorio, el sensor FSR 402 se coloca sobre la parte superior del abdomen o la zona inferior del tórax, cerca de la región del diafragma. Se utiliza una venda elástica para mantener el sensor en contacto firme pero cómodo con la superficie del cuerpo. Esta sujeción permite que el sensor detecte las variaciones de presión generadas por la expansión y contracción de la pared torácica durante la respiración.

Durante la inspiración, el descenso del diafragma y la expansión del tórax producen un aumento de presión contra el sensor; durante la espiración, la presión disminuye. Estas variaciones mecánicas se traducen en cambios de resistencia en el FSR y, por lo tanto, en variaciones de voltaje en el circuito. La señal obtenida corresponde a una forma de onda periódica asociada al ciclo respiratorio. Una vez digitalizada por el ESP32, esta señal se envía al computador, donde puede ser graficada y analizada para determinar parámetros como la frecuencia respiratoria

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/65ffe4b1-59ec-4afe-9607-4b6c7ce3d1a9" />


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

toma_respiracion.mat

Señal respiratoria hablando

Durante esta medición, el sujeto habló continuamente. Esto introduce perturbaciones en el patrón respiratorio debido al control voluntario de la respiración para la producción de voz.

Características observadas:

- rregularidad en la frecuencia respiratoria

- Cambios bruscos de amplitud

- Pausas respiratorias más cortas o forzadas

- Mayor variabilidad en la señal

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

Una vez cargados los datos almacenados, se realiza un procesamiento digital para mejorar la calidad de la señal.

Se diseña un filtro pasa banda Butterworth de segundo orden, con frecuencias de corte entre:

0.1 Hz (frecuencia mínima respiratoria esperada)

0.5 Hz (frecuencia máxima respiratoria esperada)

Este rango corresponde a respiraciones entre 6 y 30 respiraciones por minuto.

El filtrado se realiza con la función filtfilt, la cual aplica el filtro en ambas direcciones (hacia adelante y hacia atrás), evitando desfase en la señal. Esto es importante porque permite mantener la forma real de la onda respiratoria.

Posteriormente, se grafica la señal original junto con la señal filtrada para visualizar la reducción de ruido y la mejora en la definición de los ciclos respiratorios.

<img width="612" height="231" alt="image" src="https://github.com/user-attachments/assets/62a97122-ba4c-409d-9596-8ca5b038012a" />


<img width="537" height="109" alt="image" src="https://github.com/user-attachments/assets/f686cacd-766f-4637-a079-f419ba6544cf" />


Para determinar la frecuencia respiratoria dominante, se aplica la Transformada Rápida de Fourier (FFT) a la señal filtrada.

Este procedimiento permite convertir la señal del dominio del tiempo al dominio de la frecuencia, obteniendo el espectro de magnitud. En el espectro:

Se identifican las frecuencias presentes en la señal.

Se busca la frecuencia con mayor magnitud (pico dominante).

Esta frecuencia corresponde a la frecuencia respiratoria principal.

Para analizar la frecuencia respiratoria, las señales registradas en el dominio del tiempo fueron transformadas al dominio de la frecuencia mediante la Transformada Rápida de Fourier (FFT). Mientras que en el dominio del tiempo la señal muestra cómo varía el voltaje respiratorio a lo largo de los segundos, este tipo de representación no permite identificar fácilmente la periodicidad dominante. Por ello, se aplicó la FFT a la señal previamente filtrada, lo que permitió descomponerla en sus componentes sinusoidales y obtener su contenido espectral. A partir del espectro de magnitud, se identificó la frecuencia con mayor amplitud, la cual corresponde a la frecuencia dominante de la respiración. Esta frecuencia, expresada en Hertz (ciclos por segundo), se multiplicó por 60 para convertirla a respiraciones por minuto. De esta manera, el análisis en el dominio de la frecuencia facilitó una estimación objetiva y precisa de la frecuencia respiratoria, permitiendo comparar las condiciones de reposo y habla de forma cuantitativa.

<img width="240" height="105" alt="image" src="https://github.com/user-attachments/assets/08bc50f7-c89d-4891-91bb-743202b9ddb1" />


La señal respiratoria adquirida con el sensor FSR, donde la traza gris corresponde a la señal original y la traza roja a la señal filtrada. La señal original presenta variaciones de voltaje asociadas al movimiento torácico, pero también contiene ruido y fluctuaciones rápidas que no están relacionadas directamente con el ciclo respiratorio, posiblemente debidas a pequeños movimientos del cuerpo o a interferencias eléctricas. Tras aplicar el filtro pasa banda, la señal filtrada muestra una forma de onda más suave y periódica, en la que se distinguen claramente los ciclos de inspiración y espiración. Esta forma oscilatoria regular confirma que el procesamiento permitió resaltar la componente respiratoria principal, facilitando la identificación de la frecuencia respiratoria y el análisis del patrón ventilatorio a lo largo del tiempo.

<img width="995" height="624" alt="image" src="https://github.com/user-attachments/assets/2c2c3fe7-64c6-4869-8d17-ac4a4d2c66e4" />

Ahora se realizo lo mismo pero la persona hablando. En la señal cruda captada por el sensor. Se mantiene alrededor de un nivel base cercano a 2.5 V, lo cual indica que existe un offset DC (componente continua). Sobre ese nivel se ven pequeñas variaciones y picos que corresponden a la actividad generada mientras la persona habla. Sin embargo, también contiene ruido y componentes no deseadas. Se filtro la señal que da como resultado aplicar un filtro para eliminar el componente DC y reducir el ruido. Por eso ahora está centrada alrededor de 0 V. Aquí se aprecian con mayor claridad las variaciones dinámicas de la señal producidas por el habla.

<img width="978" height="612" alt="image" src="https://github.com/user-attachments/assets/5f361f45-b078-440b-8901-6f8a1939ce0e" />

En condición de reposo, se obtuvo una frecuencia dominante de 0.2 Hz, equivalente a 12 respiraciones por minuto, lo cual se encuentra dentro del rango normal de respiración tranquila en adultos. Además, el patrón respiratorio en este estado suele ser más regular y estable, ya que está controlado principalmente por mecanismos automáticos del sistema nervioso.

Por otro lado, en la condición de habla, la frecuencia dominante disminuye a 0.13333 Hz, correspondiente a 8 respiraciones por minuto. Esta reducción en la frecuencia respiratoria se debe a que al hablar, la persona realiza exhalaciones más largas y controladas para poder emitir frases completas, mientras que las inhalaciones se vuelven más cortas y estratégicas. Esto altera el ritmo natural de la respiración y la hace menos periódica.

Estos resultados confirman que los patrones respiratorios no son iguales en ambas situaciones. Mientras que en reposo la respiración es automática y rítmica, durante el habla se vuelve un proceso parcialmente voluntario, coordinado con el sistema fonador. Por esta razón, disminuye la frecuencia respiratoria y cambia la forma de la señal.

<img width="431" height="236" alt="image" src="https://github.com/user-attachments/assets/6289fd49-964d-4e9a-97ac-9da9543008fc" />


Cuando la persona está en reposo, la señal respiratoria presenta un patrón más regular, rítmico y estable, con ciclos de inhalación y exhalación uniformes. Esto se debe a que la respiración está controlada principalmente por mecanismos automáticos del sistema nervioso, sin interferencias externas importantes.

En cambio, durante el habla, la respiración se vuelve irregular y menos periódica. Se observan variaciones en la amplitud y en la duración de los ciclos respiratorios. Esto ocurre porque al hablar:

- La respiración deja de ser completamente automática

- Se modifica el flujo de aire para producir sonido

- Las exhalaciones se prolongan para poder emitir frases

- Las inhalaciones son más rápidas y estratégicas

Es decir, la respiración pasa a estar parcialmente controlada de forma voluntaria y coordinada con el sistema fonador, lo que altera tanto el patrón como la frecuencia respiratoria.

El uso de múltiples sensores para monitorear la respiración tiene varias implicaciones:

Ventajas

- Mayor precisión: Permite comparar señales de diferentes zonas (tórax, abdomen, flujo de aire, etc.) y obtener una visión más completa del proceso respiratorio.

- Detección de irregularidades locales: Se pueden identificar diferencias entre respiración torácica y abdominal.

- Reducción de errores: Si un sensor falla o capta ruido, los otros pueden servir como referencia.

- Mejor análisis de patrones complejos: Como ocurre al hablar, toser o hacer ejercicio.

Desventajas

- Mayor complejidad del sistema: Más sensores implican más cables, más procesamiento y mayor dificultad de instalación.

- Incomodidad para el paciente: Puede limitar el movimiento natural y alterar la respiración.

- Mayor costo: Tanto en hardware como en procesamiento de datos.

- Más ruido y artefactos por movimiento: Especialmente si la persona está hablando o gesticulando.

CONCLUSIÓN 

Las diferencias observadas entre las gráficas demuestran que la respiración no es un proceso fijo, sino que se adapta a la actividad que realiza la persona. El habla modifica el ritmo respiratorio para ajustarlo a las necesidades de la producción de voz. Además, aunque el uso de múltiples sensores puede mejorar la calidad y confiabilidad del monitoreo respiratorio, también introduce desafíos técnicos y prácticos que deben considerarse según el objetivo del estudio o aplicación clínica.





REFERENCIAS 

- https://pubmed.ncbi.nlm.nih.gov/22154694/

- https://pmc.ncbi.nlm.nih.gov/articles/PMC7570710/?utm_source.com

- https://pubmed.ncbi.nlm.nih.gov/21560260/

- https://booksmedicos.org/west-fisiologia-respiratoria-fundamentos-10a-edicion/

- https://www.mdpi.com/1424-8220/20/18/5446
  
- https://repository.udistrital.edu.co/server/api/core/bitstreams/afbc8df0-5093-424d-ab25-ebc7d4725f16/content
  
- https://revistamedica.com/dispositivos-monitorizacion-tiempo-real-efectividad/
