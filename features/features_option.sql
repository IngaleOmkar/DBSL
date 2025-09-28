
CREATE TABLE IF NOT EXISTS Feature (

  feature_id  SERIAL PRIMARY KEY,

  description TEXT UNIQUE NOT NULL

);


CREATE TABLE IF NOT EXISTS VehicleFeature (

  vehicle_id INT NOT NULL REFERENCES VEHICLE(id) ON DELETE CASCADE,

  feature_id INT NOT NULL REFERENCES Feature(feature_id) ON DELETE CASCADE,

  PRIMARY KEY (vehicle_id, feature_id)

);

