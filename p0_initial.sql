-- Initial table (no normalization)
-- Problems: "product_name_quantity" is not atomic (multiple values in one cell),
--           client data mixed with order data, no proper PKs.

CREATE DATABASE IF NOT EXISTS hw02;
USE hw02;

DROP TABLE IF EXISTS orders_initial;

CREATE TABLE orders_initial (
    order_id               INT          NOT NULL PRIMARY KEY,
    product_name_quantity  VARCHAR(255) NOT NULL,
    client_address         VARCHAR(255) NOT NULL,
    order_date             DATE         NOT NULL,
    client_name            VARCHAR(100) NOT NULL
);

INSERT INTO orders_initial VALUES
    (101, 'Ноутбук: 3, Мишка: 2', 'Хрещатик 1',     '2023-03-15', 'Мельник'),
    (102, 'Принтер: 1',            'Басейна 2',       '2023-03-16', 'Шевченко'),
    (103, 'Мишка: 4',              'Комп\'ютерна 3',  '2023-03-17', 'Коваленко');
