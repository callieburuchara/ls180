UPDATE parts
SET device_id = 1
WHERE id = 7 OR id = 8;

-- Further Exploration
UPDATE parts SET device_id = 1
WHERE part_number = (SELECT MIN(part_number) FROM parts);
