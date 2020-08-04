SELECT services.description FROM customers_services
RIGHT OUTER JOIN services
ON services.id = customers_services.service_id
WHERE service_id IS NULL;
