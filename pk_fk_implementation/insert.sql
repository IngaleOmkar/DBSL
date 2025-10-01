-- Insert Vehicles (root table)
INSERT INTO Vehicle (licensePlate, make, model, motorNumber, kilometers, operationStart, lastService, gasConsumption, pricePerKilometer, pricePerHour)
VALUES 
('ZH-12345', 'Toyota', 'Corolla', 10001, 15000, '2022-01-01', '2023-01-01', 6.5, 0.40, 12.00), -- CompactCar
('ZH-54321', 'BMW', 'Z4', 20001, 8000, '2022-06-01', '2023-07-01', 8.2, 0.60, 20.00),         -- Convertible
('ZH-67890', 'Mercedes', 'S-Class', 30001, 5000, '2023-03-01', '2024-01-01', 10.0, 0.80, 30.00), -- Limousine
('ZH-98765', 'Audi', 'A4', 40001, 12000, '2021-09-01', '2022-09-01', 7.0, 0.50, 15.00),       -- Sedan
('ZH-24680', 'Volkswagen', 'Caravelle', 50001, 25000, '2020-05-01', '2022-08-01', 9.0, 0.55, 18.00), -- Van
('ZH-13579', 'Opel', 'Astra Sports Tourer', 60001, 22000, '2021-03-15', '2023-04-15', 6.8, 0.45, 13.00), -- Stationwagon
('ZH-11223', 'MAN', 'TGS', 70001, 50000, '2019-01-01', '2022-01-01', 25.0, 1.20, 60.00),       -- Transporter
('ZH-44556', 'Ford', 'F-150', 80001, 30000, '2020-06-01', '2023-06-01', 15.0, 0.90, 40.00);    -- Pickup


-- Insert MotorCars
INSERT INTO MotorCar (vehicleId, childSeat, extras)
VALUES 
(1, TRUE, 'Navigation system, Bluetooth'), -- CompactCar
(2, FALSE, 'Leather seats, Sport package'),
(3, FALSE, 'Mini-bar, Privacy glass'),
(4, TRUE, 'Sunroof'),
(5, TRUE, 'Sliding doors'),
(6, FALSE, 'Roof rails, Foldable rear seats');


-- Insert Trucks
INSERT INTO Truck (vehicleId, maxLoad)
VALUES 
(7, 12000), -- Transporter
(8, 3000);  -- Pickup


-- Insert third-level MotorCar types
INSERT INTO CompactCar (vehicleId) VALUES (1);
INSERT INTO Convertible (vehicleId, backSeat) VALUES (2, FALSE);
INSERT INTO Limousine (vehicleId) VALUES (3);
INSERT INTO Sedan (vehicleId) VALUES (4);
INSERT INTO Van (vehicleId, numberOfSeats) VALUES (5, 8);
INSERT INTO Stationwagon (vehicleId, loadingVolume) VALUES (6, 600);

-- Insert third-level Truck types
INSERT INTO Transporter (vehicleId, height) VALUES (7, 3500);
INSERT INTO Pickup (vehicleId) VALUES (8);
