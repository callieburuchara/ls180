SELECT description, COUNT(service_id)
FROM services
INNER JOIN customers_services
ON services.id = service_id
GROUP BY description
HAVING COUNT(service_id) > 2
ORDER BY description;
