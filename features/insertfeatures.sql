INSERT INTO Feature (description) VALUES
    ('Heated seats'),
    ('Bluetooth'),
    ('GPS'),
    ('Parking Sensors'),
    ('Sunroof'),
    ('Roof rails')
ON CONFLICT (description) DO NOTHING;
