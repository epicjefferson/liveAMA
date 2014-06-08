JSONObject json;
JSONArray array;
JSONObject object;

//import org.json.*;

String baseURL = "http://trenurbanoapp.com/app/mapper";
String apiKey="eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6IndlYmFwaSIsIklEQ0xJRU5UIjo4OCwiSURVU0VSIjo2MTQsImV4cGlyZXMiOjE0MDE5NDc1NTY4MDR9.9r2T5XaDqlMswOgEl5qHbfTQjtl_VKRmWjDd1cavK38";

PImage map;
MercatorMap mercatorMap;

int b = 1;
int s = 7;
int counter=0;

float[] ex;
float[] wy;

PVector me;

void setup() {
  size(745, 602);
  smooth();
  
  ex = new float[40];
  wy = new float[40];

  // load map image and set lat lon boundaries to those you exported in TileMill
  map = loadImage("pr.png");  // exported with these boundaries (lon/lat/lon/lat): -132.3633, 14.4347, -58.3594, 57.7979
  
  // the map was exported with these boundaries:
  float lon1 = -66.1724;
  float lat1 = 18.3887;
  float lon2 = -66.0409;
  float lat2 = 18.4835;
  
  /*
  create MercatorMap object to set the bounding area of the map and position the POI
  this(mapScreenWidth, mapScreenHeight, DEFAULT_TOP_LATITUDE, DEFAULT_BOTTOM_LATITUDE, DEFAULT_LEFT_LONGITUDE, DEFAULT_RIGHT_LONGITUDE);
  */
  mercatorMap = new MercatorMap(745, 602, lat2, lat1, lon1, lon2); // note the inversion of lat1 and lat2! this is due to the y-origin being at the top of the sketch

  getBus();
  image(map, 0, 0);


}

void draw() {
  // display map image
  if(frameCount%(8*30)==0){
    
    getBus();
    counter=0;
  }
  counter++;
//  image(map, 0, 0);
  for(int i=0;i<40;i++){
    PVector me = mercatorMap.getScreenLocation(new PVector(wy[i],ex[i]));
    icon(me.x,me.y);
  }
  
}

void icon(float x,float y){
//  if(s >= 20)
//    b = 1;
//  if(s <= 15)
//    b = 0;
//  
//  if(b == 1)
//    s--;
//  if(b == 0)
//    s++;
    
  noStroke();
  fill(255,0,0, 100);
  ellipse(x, y, s, s);
  fill(0, 120);
  ellipse(x, y, 2, 2);
}

void getBus(){

  String request = baseURL;
  //String result = join( loadStrings( request ), "");
  //json = loadJSONObject(join(loadStrings(request), ""));
  json = loadJSONObject(request);
  //array = json.getJSONArray("d");
  //object = array.getJSONObject(15);
  //object = json.getJSONArray("d").getJSONObject(15);
  
  for(int i=0;i<40;i++){
    ex[i] = json.getJSONArray("d").getJSONObject(i).getJSONArray("trail").getJSONObject(0).getFloat("lng");
    wy[i] = json.getJSONArray("d").getJSONObject(i).getJSONArray("trail").getJSONObject(0).getFloat("lat");
    
//    noStroke();
//    fill(255,0,0, 100);
//    ellipse(ex, wy, s, s);
//    fill(0, 120);
//    ellipse(ex, wy, 2, 2);
  }
  
  //println( array );
  //println( object );
  //  println( ex );

}
