
liveAMA
=======
!(https://github.com/epicjefferson/liveAMA/blob/master/liveAMA.png "unoficial")

Español
=======
Processing sketch que utiliza el API http://trenurbanoapp.com/app/mapper para rastreo en tiempo-real del sistema AMA
de Puerto Rico.

Hasta Ahora
======
Utilizando una imagen descargada de openstreemap.org, pude obtener las coordenadas relacionadas a los bordes de esa imagen, y luego relacionar esas coordenadas a el alto y ancho en pixeles. Esto significa que puedo desplegar coordenadas correctamente en el mapa.

Logré desplegar las coordenadas de varios vehículos del sistema AMA. Estos incluyen tanto lanchas como guaguas (autobuses). La data no incluye el número de ruta, lo que hace difícil la visualización por la cantidad de rutas que se sobreponen.  

Próximo
=====
Establecer estética, paleta de colores, grosor de la línea, y posible animación entre la última lectura de coordenadas y la anterior. Identificar cada punto con su propio color y dar las posibles alternativas para el número de ruta. Habilidad de acercar y alejar el mapa (usando losas).



English
=======
Processing sketch which uses the http://trenurbanoapp.com/app/mapper API to track Puerto Rico's AMA buses in real-time.

So Far
======
Using an image downloaded from openstreetmap.org I was able to get the coordinates related to the boarders of that image,
and map that to its width and height in pixels. This means that I'm able to display coordinates correctly on the map.

I've managed to display the coordinates of a specific number of vehicles in the AMA system. These include ferries as well 
as buses. The bus information does not include the specific route it is on, which makes it more difficult due to areas 
where many bus route overlap. 

To Do
=====
Determine aesthetics. Color palette, stroke thickness, possible animation between previous and current readings.
Identify each dot with it's own color and give possible alternatives to which route it could be on. 
Ability to zoom in/out (this is using tiles).
