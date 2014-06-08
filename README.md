liveAMA
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

Determine aesthetics. Color palette, stroke thickness, possible animation between previous and current reading.
Identify each dot with it's own color and give possible alternatives to which route it could be on. 
Ability to zoom in/out (this is using tiles).
