SELECT name, part_number
FROM devices
INNER JOIN parts
ON parts.device_id = devices.id;
