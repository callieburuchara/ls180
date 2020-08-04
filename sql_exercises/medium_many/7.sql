SELECT SUM(price) as gross
FROM services
INNER JOIN customers_services
ON service_id = services.id;

-- First step: view everything you should, then sum the prices (above)
SELECT * FROM services
INNER JOIN customers_services
ON service_id = services.id;
