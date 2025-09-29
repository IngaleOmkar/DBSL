-- 1. Insert into Vehicle
INSERT INTO Vehicle (
    licensePlate, make, model, motorNumber, kilometers, operationStart, 
    lastService, gasConsumption, pricePerKilometer, pricePerHour
) VALUES (
    'ABC123', 'Audi', 'A5 Cabriolet', 1001, 25000, '2022-01-10', 
    '2023-12-01', 7.5, 0.50, 15.00
);

-- 2. Assume vehicleId generated was 1
--    Insert into MotorCar
INSERT INTO MotorCar (
    vehicleId, childSeat, extras
) VALUES (
    1, TRUE, 'Heated seats, Bluetooth'
);

-- 3. Insert into Convertible
INSERT INTO Convertible (
    vehicleId, backSeat
) VALUES (
    1, TRUE
);


-- 4. Insert into Vehicle
INSERT INTO Vehicle (
    licensePlate, make, model, motorNumber, kilometers, operationStart, 
    lastService, gasConsumption, pricePerKilometer, pricePerHour
) VALUES (
    'TRK789', 'Mercedes', 'Sprinter 316', 2002, 80000, '2020-06-15',
    '2023-11-10', 12.3, 1.10, 25.00
);

-- 5. Assume vehicleId is 2
--    Insert into Truck
INSERT INTO Truck (
    vehicleId, maxLoad
) VALUES (
    2, 3500
);

-- 6. Insert into Transporter
INSERT INTO Transporter (
    vehicleId, height
) VALUES (
    2, 250
);


-- 7. Insert into Vehicle
INSERT INTO Vehicle (
    licensePlate, make, model, motorNumber, kilometers, operationStart, 
    lastService, gasConsumption, pricePerKilometer, pricePerHour
) VALUES (
    'VAN456', 'Volkswagen', 'Multivan', 3003, 45000, '2021-03-20',
    '2024-02-28', 9.4, 0.80, 20.00
);

-- 8. vehicleId = 3
INSERT INTO MotorCar (
    vehicleId, childSeat, extras
) VALUES (
    3, FALSE, 'GPS, Parking Sensors'
);

-- 9. Insert into Van
INSERT INTO Van (
    vehicleId, numberOfSeats
) VALUES (
    3, 7
);


-- 10. Insert into Vehicle
INSERT INTO Vehicle (
    licensePlate, make, model, motorNumber, kilometers, operationStart, 
    lastService, gasConsumption, pricePerKilometer, pricePerHour
) VALUES (
    'STW321', 'Skoda', 'Octavia Combi', 4004, 60000, '2019-05-10',
    '2024-05-01', 6.8, 0.55, 18.00
);

-- 11. vehicleId = 4
INSERT INTO MotorCar (
    vehicleId, childSeat, extras
) VALUES (
    4, TRUE, 'Sunroof, Roof rails'
);

-- 12. Insert into Stationwagon
INSERT INTO Stationwagon (
    vehicleId, loadingVolume
) VALUES (
    4, 610
);
