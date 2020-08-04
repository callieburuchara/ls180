$ createdb billing
---
CREATE TABLE customers (
id serial PRIMARY KEY,
name text NOT NULL,
payment_token char(8) NOT NULL UNIQUE CHECK (payment_token ~ '[A-Z]{8}$')
);

---
CREATE TABLE services (
id serial PRIMARY KEY,
description text NOT NULL,
price numeric(10, 2) NOT NULL CHECK (price >= 0.00)
);

---

INSERT INTO customers (name, payment_token)
VALUES
('Pat Johnson', 'XHGOAHEQ'),
('Nancy Monreal', 'JKWQPJKL'),
('Lynn Blake', 'KLZXWEEE'),
('Chen Ke-Hua', 'KWETYCVX'),
('Scott Lakso', 'UUEAPQPS'),
('Jim Pornot', 'XKJEYAZA');

---

INSERT INTO services (description, price)
VALUES
('Unix Hosting', 5.95),
('DNS', 4.95),
('Whois Registration', 1.95),
('High Bandwidth', 15.00),
('Business Support', 250.00),
('Dedicated Hosting', 50.00),
('Bulk Email', 250.00),
('One-to-one Training', 999.00);

---

CREATE TABLE customers_services (
id serial PRIMARY KEY,
customer_id integer REFERENCES customers (id) ON DELETE CASCADE,
service_id integer REFERENCES services (id)
);

ALTER TABLE customers_services
ADD UNIQUE (customer_id, service_id);

---
-- How to add the unique constraint while creating the customers_services table
CREATE TABLE customers_services (
  id serial PRIMARY KEY,
  customer_id integer
    REFERENCES customers (id)
    ON DELETE CASCADE
    NOT NULL,
  service_id integer
    REFERENCES services (id)
    NOT NULL,
  UNIQUE(customer_id, service_id)
);
---

INSERT INTO customers_services(customer_id, service_id)
VALUES
(2, 1),
(2, 2),
(2, 3),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(5, 1),
(5, 4),
(6, 1),
(6, 2),
(6, 6),
(7, 1),
(7, 6),
(7, 7);
