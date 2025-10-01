SELECT v.licensePlate, v.make, v.model, 
       STRING_AGG(f.description, ', ' ORDER BY f.description) AS features
FROM Vehicle v
LEFT JOIN VehicleFeature vf ON v.id = vf.vehicle_id
LEFT JOIN Feature f ON f.feature_id = vf.feature_id
GROUP BY v.id, v.licensePlate, v.make, v.model
ORDER BY v.licensePlate;
