SELECT SUM(price) FROM services
INNER JOIN customers_services 
ON services.id = service_id
WHERE price > 100;

---

SELECT SUM(price) FROM customers
CROSS JOIN services
WHERE price > 100;
