//JSONObject j = loadJSONObject("https://api.n2yo.com/rest/v1/satellite/positions/25544/41.702/-76.014/0/2/&apiKey=GUEEAL-Z7MBKJ-CPLJWD-4SOY");//indsæt nøglen her
//JSONArray positionsJson = j.getJSONArray("positions");
 
//JSONObject pos1 = positionsJson.getJSONObject(0);
//JSONObject pos2 = positionsJson.getJSONObject(1);

//float sat1Lon = pos1.getFloat("satlongitude");
//float sat1Lat = pos1.getFloat("satlatitude");

//float sat2Lon = pos2.getFloat("satlongitude");
//float sat2Lat = pos2.getFloat("satlatitude");

PVector yAxis = new PVector(0, 1, 0);
PVector zAxis = new PVector(0, 0, 1);

float rotation = 0;

float r = 200;
PImage earth;
PShape globe;

void setup(){
size(600, 600, P3D);
earth = loadImage("earth.jpg");
noStroke();
globe = createShape(SPHERE, r);
globe.setTexture(earth);
}

void draw(){
  
  clear();
  background(0,0,255);
  pushMatrix();
  translate(width*0.5, height*0.5);
  rotate(rotation, yAxis.x, yAxis.y, yAxis.z);
  rotate(rotation,zAxis.x,zAxis.y,zAxis.z);
  shape(globe);
  box(50);
  popMatrix();
  rotation +=0.01;
  
//println(sat1Lon,sat1Lat);
//println(sat2Lon,sat2Lat);

//clear();

  //rotation +=0.01;

  //midten
  //pushMatrix();
  //translate(width*0.5, height*0.5);
  //box(20);
  //popMatrix();

  //rotation+=0.1;

  //latt
  //pushMatrix();
  //translate(width*0.5, height*0.5);
  //rotate(rotation, yAxis.x, yAxis.y, yAxis.z);
  //rotate(rotation,zAxis.x,zAxis.y,zAxis.z);
  //translate(100, 0, 0);
  //box(20);
  //popMatrix();

}
