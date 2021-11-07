class satellit{
JSONObject thisSatInfo;
JSONArray positionsJson;
JSONObject pos1;
JSONObject pos2;

float sat1Lon;
float sat1Lat;
float sat1Alt;
float sat1Time;
float sat2Lon;
float sat2Lat;    
float sat2Time;
float satellitAcc;
float satellitSpe;


float laengdegradAEndr;
float breddegradAEndr;
  
  satellit(JSONObject satInfo){
  thisSatInfo = satInfo;
  positionsJson = thisSatInfo.getJSONArray("positions");
  pos1 = positionsJson.getJSONObject(0);
  pos2 = positionsJson.getJSONObject(1);

  sat1Lon = pos1.getFloat("satlongitude");
  sat1Lat = pos1.getFloat("satlatitude");
  sat1Alt = pos1.getFloat("sataltitude");
  sat1Time = pos1.getFloat("sataltitude");
  sat2Lon = pos2.getFloat("satlongitude");
  sat2Lat = pos2.getFloat("satlatitude");
  sat2Time = pos1.getFloat("sataltitude");
  satellitAcc = sqrt(sq(sat2Lon - sat1Lon) + sq(sat2Lat - sat1Lat))/(sat2Time-sat1Time);
  laengdegradAEndr = (sat2Lon-sat1Lon)/(sat2Time-sat1Time);
  breddegradAEndr = (sat2Lat-sat1Lat)/(sat2Time-sat1Time);
  }

  

}
