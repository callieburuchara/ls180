SELECT name, string_agg(description, ', ') AS services
FROM customers
LEFT OUTER JOIN customers_services
ON customers.id = customers_services.customer_id
LEFT OUTER JOIN services
ON services.id = customers_services.service_id
GROUP BY customers.id;
