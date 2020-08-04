SELECT customers.* FROM customers
LEFT OUTER JOIN customers_services
ON customer_id = customers.id
WHERE service_id IS NULL;
