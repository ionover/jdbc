CREATE TABLE IF NOT EXISTS CUSTOMERS
(
    id
    SERIAL
    PRIMARY
    KEY,
    name
    VARCHAR
(
    100
) NOT NULL,
    surname VARCHAR
(
    100
) NOT NULL,
    age INT,
    phone_number VARCHAR
(
    20
)
    );

CREATE TABLE IF NOT EXISTS ORDERS
(
    id
    SERIAL
    PRIMARY
    KEY,
    date
    DATE
    NOT
    NULL,
    customer_id
    INT
    NOT
    NULL,
    product_name
    VARCHAR
(
    255
) NOT NULL,
    amount NUMERIC
(
    10,
    2
) NOT NULL,
    CONSTRAINT fk_orders_customers
    FOREIGN KEY
(
    customer_id
)
    REFERENCES CUSTOMERS
(
    id
)
    ON DELETE CASCADE
    );


-- Пример вставки 5 записей в таблицу CUSTOMERS
INSERT INTO CUSTOMERS (name, surname, age, phone_number)
VALUES ('Alexey', 'Smirnov', 28, '555-0101'),
       ('Maria', 'Ivanova', 34, '555-0202'),
       ('Dmitry', 'Petrov', 45, '555-0303'),
       ('Elena', 'Sokolova', 22, '555-0404'),
       ('Sergey', 'Kuznetsov', 39, '555-0505');

-- Пример вставки 5 записей в таблицу ORDERS
INSERT INTO ORDERS (date, customer_id, product_name, amount)
VALUES ('2025-07-10', 1, 'Smartphone', 699.99),
       ('2025-07-11', 2, 'Headphones', 149.50),
       ('2025-07-12', 1, 'USB-C Cable', 19.99),
       ('2025-07-13', 3, 'Monitor', 249.00),
       ('2025-07-14', 4, 'Keyboard', 89.95);
