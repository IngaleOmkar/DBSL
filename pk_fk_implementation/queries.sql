-- display all vehicles
SELECT v.vehicleId, v.licensePlate, v.make, v.model, mc.childSeat, mc.extras
FROM Vehicle v
JOIN MotorCar mc ON v.vehicleId = mc.vehicleId;


-- display all vehicles and their types

SELECT v.vehicleId, v.licensePlate, v.make, v.model,
       CASE 
           WHEN cc.vehicleId IS NOT NULL THEN 'CompactCar'
           WHEN cv.vehicleId IS NOT NULL THEN 'Convertible'
           WHEN l.vehicleId IS NOT NULL THEN 'Limousine'
           WHEN s.vehicleId IS NOT NULL THEN 'Sedan'
           WHEN van.vehicleId IS NOT NULL THEN 'Van'
           WHEN sw.vehicleId IS NOT NULL THEN 'Stationwagon'
           WHEN t.vehicleId IS NOT NULL AND tr.vehicleId IS NOT NULL THEN 'Transporter'
           WHEN t.vehicleId IS NOT NULL AND p.vehicleId IS NOT NULL THEN 'Pickup'
           ELSE 'Unknown'
       END AS vehicleType
FROM Vehicle v
LEFT JOIN MotorCar mc ON v.vehicleId = mc.vehicleId
LEFT JOIN CompactCar cc ON mc.vehicleId = cc.vehicleId
LEFT JOIN Convertible cv ON mc.vehicleId = cv.vehicleId
LEFT JOIN Limousine l ON mc.vehicleId = l.vehicleId
LEFT JOIN Sedan s ON mc.vehicleId = s.vehicleId
LEFT JOIN Van van ON mc.vehicleId = van.vehicleId
LEFT JOIN Stationwagon sw ON mc.vehicleId = sw.vehicleId
LEFT JOIN Truck t ON v.vehicleId = t.vehicleId
LEFT JOIN Transporter tr ON t.vehicleId = tr.vehicleId
LEFT JOIN Pickup p ON t.vehicleId = p.vehicleId;


-- count vehicles by type
SELECT 'CompactCar' AS type, COUNT(*) FROM CompactCar
UNION ALL
SELECT 'Convertible', COUNT(*) FROM Convertible
UNION ALL
SELECT 'Limousine', COUNT(*) FROM Limousine
UNION ALL
SELECT 'Sedan', COUNT(*) FROM Sedan
UNION ALL
SELECT 'Van', COUNT(*) FROM Van
UNION ALL
SELECT 'Stationwagon', COUNT(*) FROM Stationwagon
UNION ALL
SELECT 'Transporter', COUNT(*) FROM Transporter
UNION ALL
SELECT 'Pickup', COUNT(*) FROM Pickup;
