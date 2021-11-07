PVector yAxis = new PVector(0, 1, 0);
PVector zAxis = new PVector(0, 0, 1);

float rotation = 0;
float r = 100;

PImage earth;
PShape globe;
satellit iss;

int i = 0;
int dag, maaned, aar, time, minute, sekund;
int sek = -1;
float laengde, bredde;

void setup(){
iss = new satellit(loadJSONObject("https://api.n2yo.com/rest/v1/satellite/positions/25544/41.702/-76.014/0/2/&apiKey=GVPKBF-X8MW7E-DAJ7DL-4SW7"));//indsæt nøglen her
  
size(600, 600, P3D);
earth = loadImage("earth.jpg");
noStroke();
globe = createShape(SPHERE, r);
globe.setTexture(earth);

laengde = iss.sat1Lon;
bredde = iss.sat1Lat;
}

void draw(){
  
  clear();
  background(0,0,255);
  pushMatrix();
  translate(width*0.5, height*0.5);
  rotate(rotation, yAxis.x, yAxis.y, yAxis.z);
  rotate(rotation,zAxis.x,zAxis.y,zAxis.z);
  shape(globe);
  translate(0,0,250);
  
  box(30);
  
  popMatrix();
  rotation +=0.01;
  iss.satellitSpe +=iss.satellitAcc;
  
  if(i<1){
  dag = day();
  maaned = month();
  aar = year();
  time = hour();
  minute = minute();
  sekund = second();
  i++;
  } 
  
  
  text("Sidst opdateret: " + dag + "/" + maaned + "/" + aar + "/" + "kl: " + time + ":" + minute + ":" + sekund, 10, height-70);
  text("International Space Station's længegrad: " + laengde, 10, height-50);
  text("International Space Station's breddegrad: " + bredde, 10, height-30);
  text("International Space Station's højde: " + iss.sat1Alt, 10, height-10);

}
