SELECT devices.name, count(parts.id) AS amount_of_parts
FROM devices
INNER JOIN parts
ON parts.device_id = devices.id
GROUP BY devices.name;
--
SELECT devices.name AS name, COUNT(parts.device_id) FROM devices
LEFT OUTER JOIN parts ON devices.id = parts.device_id GROUP BY devices.name;
-- Using a LEFT OUTER JOIN will include devices even if they don't have
-- any parts
