INSERT INTO Vehicle (
    licensePlate, make, model, motorNumber, kilometers, operationStart, 
    lastService, gasConsumption, pricePerKilometer, pricePerHour
) VALUES (
    'ABC123', 'Audi', 'A5 Cabriolet', 1001, 25000, '2022-01-10', 
    '2023-12-01', 7.5, 0.50, 15.00
)
ON CONFLICT (licensePlate) DO UPDATE
SET lastService = EXCLUDED.lastService;

DELETE FROM Convertible WHERE id = (SELECT id FROM Vehicle WHERE licensePlate = 'ABC123');
DELETE FROM MotorCar    WHERE id = (SELECT id FROM Vehicle WHERE licensePlate = 'ABC123');

INSERT INTO MotorCar (id, childSeat)
SELECT v.id, TRUE FROM Vehicle v WHERE v.licensePlate = 'ABC123';

INSERT INTO Convertible (id, backSeat)
SELECT v.id, TRUE FROM Vehicle v WHERE v.licensePlate = 'ABC123';


INSERT INTO Vehicle (
    licensePlate, make, model, motorNumber, kilometers, operationStart, 
    lastService, gasConsumption, pricePerKilometer, pricePerHour
) VALUES (
    'TRK789', 'Mercedes', 'Sprinter 316', 2002, 80000, '2020-06-15',
    '2023-11-10', 12.3, 1.10, 25.00
)
ON CONFLICT (licensePlate) DO UPDATE
SET lastService = EXCLUDED.lastService;

DELETE FROM Transporter WHERE id = (SELECT id FROM Vehicle WHERE licensePlate = 'TRK789');
DELETE FROM Truck       WHERE id = (SELECT id FROM Vehicle WHERE licensePlate = 'TRK789');

INSERT INTO Truck (id, maxLoad)
SELECT v.id, 3500 FROM Vehicle v WHERE v.licensePlate = 'TRK789';

INSERT INTO Transporter (id, height)
SELECT v.id, 250 FROM Vehicle v WHERE v.licensePlate = 'TRK789';


INSERT INTO Vehicle (
    licensePlate, make, model, motorNumber, kilometers, operationStart, 
    lastService, gasConsumption, pricePerKilometer, pricePerHour
) VALUES (
    'VAN456', 'Volkswagen', 'Multivan', 3003, 45000, '2021-03-20',
    '2024-02-28', 9.4, 0.80, 20.00
)
ON CONFLICT (licensePlate) DO UPDATE
SET lastService = EXCLUDED.lastService;

DELETE FROM Van      WHERE id = (SELECT id FROM Vehicle WHERE licensePlate = 'VAN456');
DELETE FROM MotorCar WHERE id = (SELECT id FROM Vehicle WHERE licensePlate = 'VAN456');

INSERT INTO MotorCar (id, childSeat)
SELECT v.id, FALSE FROM Vehicle v WHERE v.licensePlate = 'VAN456';

INSERT INTO Van (id, numberOfSeats)
SELECT v.id, 7 FROM Vehicle v WHERE v.licensePlate = 'VAN456';



INSERT INTO Vehicle (
    licensePlate, make, model, motorNumber, kilometers, operationStart, 
    lastService, gasConsumption, pricePerKilometer, pricePerHour
) VALUES (
    'STW321', 'Skoda', 'Octavia Combi', 4004, 60000, '2019-05-10',
    '2024-05-01', 6.8, 0.55, 18.00
)
ON CONFLICT (licensePlate) DO UPDATE
SET lastService = EXCLUDED.lastService;

DELETE FROM StationWagon WHERE id = (SELECT id FROM Vehicle WHERE licensePlate = 'STW321');
DELETE FROM MotorCar     WHERE id = (SELECT id FROM Vehicle WHERE licensePlate = 'STW321');

INSERT INTO MotorCar (id, childSeat)
SELECT v.id, TRUE FROM Vehicle v WHERE v.licensePlate = 'STW321';

INSERT INTO StationWagon (id, loadingVolume)
SELECT v.id, 610 FROM Vehicle v WHERE v.licensePlate = 'STW321';

INSERT INTO Feature (description) VALUES
    ('Heated seats'),
    ('Bluetooth'),
    ('GPS'),
    ('Parking Sensors'),
    ('Sunroof'),
    ('Roof rails')
ON CONFLICT (description) DO NOTHING;

INSERT INTO VehicleFeature (vehicle_id, feature_id)
SELECT v.id, f.feature_id
FROM Vehicle v, Feature f
WHERE v.licensePlate = 'ABC123' 
  AND f.description IN ('Heated seats','Bluetooth')
ON CONFLICT DO NOTHING;

INSERT INTO VehicleFeature (vehicle_id, feature_id)
SELECT v.id, f.feature_id
FROM Vehicle v, Feature f
WHERE v.licensePlate = 'VAN456' 
  AND f.description IN ('GPS','Parking Sensors')
ON CONFLICT DO NOTHING;

INSERT INTO VehicleFeature (vehicle_id, feature_id)
SELECT v.id, f.feature_id
FROM Vehicle v, Feature f
WHERE v.licensePlate = 'STW321' 
  AND f.description IN ('Sunroof','Roof rails')
ON CONFLICT DO NOTHING;
