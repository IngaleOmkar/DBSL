CREATE DOMAIN KILOMETER AS NUMERIC CHECK (VALUE >= 0);
CREATE DOMAIN LITER AS NUMERIC CHECK (VALUE >= 0);

CREATE TABLE VEHICLE (
    id SERIAL NOT NULL PRIMARY KEY,
    licenseplate VARCHAR(20) UNIQUE,
    make VARCHAR(10),
    model VARCHAR(20),
    motornumber BIGINT,
    kilometers KILOMETER,
    isoperational BOOLEAN,
    operationstart TIMESTAMP,
    lastservice TIMESTAMP,
    gasconsumption LITER,
    maxkilometers KILOMETER,
    priceperkilometer MONEY,
    priceperhour MONEY,
    image BYTEA
);

CREATE TABLE MOTORCAR (
    childseat BOOLEAN
) INHERITS (VEHICLE);

CREATE TABLE COMPACTCAR (
    priceperkilometer MONEY DEFAULT 2,
    priceperhour MONEY DEFAULT 10,
    maxkilometers KILOMETER DEFAULT 1000000
) INHERITS (MOTORCAR);

CREATE TABLE LIMOUSINE (
    priceperkilometer MONEY DEFAULT 5,
    priceperhour MONEY DEFAULT 100,
    maxkilometers KILOMETER DEFAULT 200000
) INHERITS (MOTORCAR);

CREATE TABLE CONVERTIBLE (
    backseat BOOLEAN,
    priceperkilometer MONEY DEFAULT 1,
    priceperhour MONEY DEFAULT 5,
    maxkilometers KILOMETER DEFAULT 50000
) INHERITS (MOTORCAR);

CREATE TABLE SEDAN (
    priceperkilometer MONEY DEFAULT 1.5,
    priceperhour MONEY DEFAULT 5.5,
    maxkilometers KILOMETER DEFAULT 500000
) INHERITS (MOTORCAR);

CREATE TABLE STATIONWAGON (
    loadingvolume INT,
    priceperkilometer MONEY DEFAULT 2.5,
    priceperhour MONEY DEFAULT 55.5,
    maxkilometers KILOMETER DEFAULT 120000
) INHERITS (MOTORCAR);

CREATE TABLE VAN (
    numberofseats INT,
    priceperkilometer MONEY DEFAULT 1.25,
    priceperhour MONEY DEFAULT 25.5,
    maxkilometers KILOMETER DEFAULT 200000
) INHERITS (MOTORCAR);

CREATE TABLE TRUCK (
    maxload BIGINT
) INHERITS (VEHICLE);

CREATE TABLE PICKUP (
    priceperkilometer MONEY DEFAULT 10.25,
    priceperhour MONEY DEFAULT 500,
    maxkilometers KILOMETER DEFAULT 50000
) INHERITS (TRUCK);

CREATE TABLE TRANSPORTER (
    priceperkilometer MONEY DEFAULT 15.25,
    priceperhour MONEY DEFAULT 1000,
    maxkilometers KILOMETER DEFAULT 75000,
    height BIGINT
) INHERITS (TRUCK);

CREATE TABLE IF NOT EXISTS Feature (
    feature_id SERIAL PRIMARY KEY,
    description TEXT UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS VehicleFeature (
    vehicle_id INT NOT NULL REFERENCES VEHICLE(id) ON DELETE CASCADE,
    feature_id INT NOT NULL REFERENCES Feature(feature_id) ON DELETE CASCADE,
    PRIMARY KEY (vehicle_id, feature_id)
);
