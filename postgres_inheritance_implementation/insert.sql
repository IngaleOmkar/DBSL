INSERT INTO compactcar (licenseplate, make, model, motornumber, kilometers, isoperational, operationstart, lastservice, gasconsumption, childseat)
VALUES
('ZH4001', 'VW', 'Polo', 40001, 50000, TRUE, NOW() - INTERVAL '2 years', NOW() - INTERVAL '6 months', 45, TRUE),
('ZH4002', 'Opel', 'Corsa', 40002, 30000, TRUE, NOW() - INTERVAL '1 year', NOW() - INTERVAL '4 months', 42, FALSE),
('ZH4003', 'Fiat', 'Punto', 40003, 75000, FALSE, NOW() - INTERVAL '4 years', NOW() - INTERVAL '1 year', 48, TRUE);


INSERT INTO limousine (licenseplate, make, model, motornumber, kilometers, isoperational, operationstart, lastservice, gasconsumption, childseat)
VALUES
('ZH4101', 'Mercedes', 'S-Class', 41001, 150000, TRUE, NOW() - INTERVAL '5 years', NOW() - INTERVAL '1 year', 90, TRUE),
('ZH4102', 'BMW', '7-Series', 41002, 120000, TRUE, NOW() - INTERVAL '4 years', NOW() - INTERVAL '10 months', 88, FALSE),
('ZH4103', 'Audi', 'A8', 41003, 160000, FALSE, NOW() - INTERVAL '6 years', NOW() - INTERVAL '2 years', 95, TRUE);


INSERT INTO convertible (licenseplate, make, model, motornumber, kilometers, isoperational, operationstart, lastservice, gasconsumption, childseat, backseat)
VALUES
('ZH4201', 'BMW', 'Z4', 42001, 60000, TRUE, NOW() - INTERVAL '3 years', NOW() - INTERVAL '9 months', 60, FALSE, TRUE),
('ZH4202', 'Mazda', 'MX-5', 42002, 40000, TRUE, NOW() - INTERVAL '2 years', NOW() - INTERVAL '6 months', 55, FALSE, FALSE),
('ZH4203', 'Mercedes', 'SLK', 42003, 85000, FALSE, NOW() - INTERVAL '5 years', NOW() - INTERVAL '2 years', 65, TRUE, TRUE);


INSERT INTO sedan (licenseplate, make, model, motornumber, kilometers, isoperational, operationstart, lastservice, gasconsumption, childseat)
VALUES
('ZH4301', 'Toyota', 'Camry', 43001, 80000, TRUE, NOW() - INTERVAL '4 years', NOW() - INTERVAL '8 months', 55, FALSE),
('ZH4302', 'Honda', 'Accord', 43002, 70000, TRUE, NOW() - INTERVAL '3 years', NOW() - INTERVAL '1 year', 52, TRUE),
('ZH4303', 'Nissan', 'Altima', 43003, 95000, FALSE, NOW() - INTERVAL '6 years', NOW() - INTERVAL '2 years', 58, FALSE);


INSERT INTO stationwagon (licenseplate, make, model, motornumber, kilometers, isoperational, operationstart, lastservice, gasconsumption, childseat, loadingvolume)
VALUES
('ZH4401', 'Volvo', 'V90', 44001, 120000, TRUE, NOW() - INTERVAL '6 years', NOW() - INTERVAL '1 year', 70, TRUE, 650),
('ZH4402', 'Skoda', 'Octavia Combi', 44002, 85000, TRUE, NOW() - INTERVAL '4 years', NOW() - INTERVAL '9 months', 65, FALSE, 600),
('ZH4403', 'Audi', 'A4 Avant', 44003, 100000, FALSE, NOW() - INTERVAL '7 years', NOW() - INTERVAL '2 years', 72, TRUE, 700);

INSERT INTO van (licenseplate, make, model, motornumber, kilometers, isoperational, operationstart, lastservice, gasconsumption, childseat, numberofseats)
VALUES
('ZH4501', 'Ford', 'Transit', 45001, 200000, TRUE, NOW() - INTERVAL '7 years', NOW() - INTERVAL '2 years', 110, TRUE, 9),
('ZH4502', 'Mercedes', 'Sprinter', 45002, 180000, TRUE, NOW() - INTERVAL '6 years', NOW() - INTERVAL '1 year', 105, FALSE, 12),
('ZH4503', 'Renault', 'Master', 45003, 220000, FALSE, NOW() - INTERVAL '8 years', NOW() - INTERVAL '3 years', 115, TRUE, 8);


INSERT INTO pickup (licenseplate, make, model, motornumber, kilometers, isoperational, operationstart, lastservice, gasconsumption, maxload)
VALUES
('ZH4601', 'Ford', 'F-150', 46001, 90000, TRUE, NOW() - INTERVAL '5 years', NOW() - INTERVAL '6 months', 85, 2000),
('ZH4602', 'Toyota', 'Hilux', 46002, 110000, TRUE, NOW() - INTERVAL '6 years', NOW() - INTERVAL '1 year', 82, 2200),
('ZH4603', 'Nissan', 'Navara', 46003, 95000, FALSE, NOW() - INTERVAL '7 years', NOW() - INTERVAL '2 years', 90, 2100);


INSERT INTO transporter (licenseplate, make, model, motornumber, kilometers, isoperational, operationstart, lastservice, gasconsumption, maxload, height)
VALUES
('ZH4701', 'MAN', 'TGX', 47001, 300000, TRUE, NOW() - INTERVAL '10 years', NOW() - INTERVAL '3 years', 150, 10000, 4000),
('ZH4702', 'Scania', 'R-Series', 47002, 280000, TRUE, NOW() - INTERVAL '9 years', NOW() - INTERVAL '2 years', 145, 9500, 3800),
('ZH4703', 'DAF', 'XF', 47003, 320000, FALSE, NOW() - INTERVAL '11 years', NOW() - INTERVAL '4 years', 155, 11000, 4200);
