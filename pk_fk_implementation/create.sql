-- Create custom domains for specific data types
CREATE DOMAIN KILOMETER AS INTEGER CHECK (VALUE >= 0);
CREATE DOMAIN LITRE AS DECIMAL(10,2) CHECK (VALUE >= 0);
CREATE DOMAIN MONEY AS DECIMAL(10,2) CHECK (VALUE >= 0);

-- Root table: Vehicle
CREATE TABLE Vehicle (
    vehicleId SERIAL PRIMARY KEY,
    licensePlate VARCHAR(20) NOT NULL UNIQUE,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    motorNumber INTEGER NOT NULL,
    kilometers KILOMETER NOT NULL DEFAULT 0,
    isOperational BOOLEAN NOT NULL DEFAULT TRUE,
    operationStart DATE NOT NULL,
    lastService DATE,
    gasConsumption LITRE NOT NULL,
    picture BYTEA, 
    maxKilometers KILOMETER, 
    pricePerKilometer MONEY, 
    pricePerHour MONEY 
);

-- Second level: MotorCar (inherits from Vehicle)
CREATE TABLE MotorCar (
    vehicleId INTEGER PRIMARY KEY,
    childSeat BOOLEAN NOT NULL DEFAULT FALSE,
    extras VARCHAR(500),
    
    -- Foreign key constraint to Vehicle
    CONSTRAINT fk_motorcar_vehicle 
        FOREIGN KEY (vehicleId) 
        REFERENCES Vehicle(vehicleId) 
        ON DELETE CASCADE
);

-- Second level: Truck (inherits from Vehicle)  
CREATE TABLE Truck (
    vehicleId INTEGER PRIMARY KEY,
    maxLoad INTEGER NOT NULL CHECK (maxLoad > 0),
    
    -- Foreign key constraint to Vehicle
    CONSTRAINT fk_truck_vehicle 
        FOREIGN KEY (vehicleId) 
        REFERENCES Vehicle(vehicleId) 
        ON DELETE CASCADE
);

-- Third level: CompactCar (inherits from MotorCar)
CREATE TABLE CompactCar (
    vehicleId INTEGER PRIMARY KEY,
    
    -- Foreign key constraint to MotorCar
    CONSTRAINT fk_compactcar_motorcar 
        FOREIGN KEY (vehicleId) 
        REFERENCES MotorCar(vehicleId) 
        ON DELETE CASCADE
);

-- Third level: Convertible (inherits from MotorCar)
CREATE TABLE Convertible (
    vehicleId INTEGER PRIMARY KEY,
    backSeat BOOLEAN NOT NULL DEFAULT TRUE,
    
    -- Foreign key constraint to MotorCar
    CONSTRAINT fk_convertible_motorcar 
        FOREIGN KEY (vehicleId) 
        REFERENCES MotorCar(vehicleId) 
        ON DELETE CASCADE
);

-- Third level: Limousine (inherits from MotorCar)
CREATE TABLE Limousine (
    vehicleId INTEGER PRIMARY KEY,
    
    -- Foreign key constraint to MotorCar
    CONSTRAINT fk_limousine_motorcar 
        FOREIGN KEY (vehicleId) 
        REFERENCES MotorCar(vehicleId) 
        ON DELETE CASCADE
);

-- Third level: Sedan (inherits from MotorCar)
CREATE TABLE Sedan (
    vehicleId INTEGER PRIMARY KEY,
    
    -- Foreign key constraint to MotorCar
    CONSTRAINT fk_sedan_motorcar 
        FOREIGN KEY (vehicleId) 
        REFERENCES MotorCar(vehicleId) 
        ON DELETE CASCADE
);

-- Third level: Van (inherits from MotorCar)
CREATE TABLE Van (
    vehicleId INTEGER PRIMARY KEY,
    numberOfSeats INTEGER NOT NULL CHECK (numberOfSeats > 0),
    
    -- Foreign key constraint to MotorCar
    CONSTRAINT fk_van_motorcar 
        FOREIGN KEY (vehicleId) 
        REFERENCES MotorCar(vehicleId) 
        ON DELETE CASCADE
);

-- Third level: Stationwagon (inherits from MotorCar)
CREATE TABLE Stationwagon (
    vehicleId INTEGER PRIMARY KEY,
    loadingVolume INTEGER NOT NULL CHECK (loadingVolume > 0),
    
    -- Foreign key constraint to MotorCar
    CONSTRAINT fk_stationwagon_motorcar 
        FOREIGN KEY (vehicleId) 
        REFERENCES MotorCar(vehicleId) 
        ON DELETE CASCADE
);

-- Third level: Transporter (inherits from Truck)
CREATE TABLE Transporter (
    vehicleId INTEGER PRIMARY KEY,
    height INTEGER NOT NULL CHECK (height > 0),
    
    -- Foreign key constraint to Truck
    CONSTRAINT fk_transporter_truck 
        FOREIGN KEY (vehicleId) 
        REFERENCES Truck(vehicleId) 
        ON DELETE CASCADE
);

-- Third level: Pickup (inherits from Truck)
CREATE TABLE Pickup (
    vehicleId INTEGER PRIMARY KEY,
    
    -- Foreign key constraint to Truck
    CONSTRAINT fk_pickup_truck 
        FOREIGN KEY (vehicleId) 
        REFERENCES Truck(vehicleId) 
        ON DELETE CASCADE
);