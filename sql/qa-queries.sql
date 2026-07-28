-- SQL commands for Junior QA Engineer


-- =========================
-- SELECT
-- Получение данных
-- =========================

SELECT *
FROM users;


SELECT name, email
FROM users;


-- =========================
-- WHERE
-- Фильтрация
-- =========================

SELECT *
FROM users
WHERE id = 1;


SELECT *
FROM users
WHERE age > 18;


-- =========================
-- Comparison operators
-- =========================

-- равно
WHERE status = 'active'

-- не равно
WHERE status != 'blocked'

-- больше
WHERE age > 18

-- меньше
WHERE age < 18

-- больше или равно
WHERE age >= 18

-- меньше или равно
WHERE age <= 18


-- =========================
-- AND / OR / NOT
-- =========================

SELECT *
FROM users
WHERE age >= 18
AND status = 'active';


SELECT *
FROM users
WHERE status = 'active'
OR status = 'pending';


SELECT *
FROM users
WHERE NOT status = 'blocked';


-- =========================
-- BETWEEN
-- диапазон значений
-- =========================

SELECT *
FROM users
WHERE age BETWEEN 18 AND 30;


-- =========================
-- IN
-- несколько возможных значений
-- =========================

SELECT *
FROM users
WHERE status IN ('active', 'pending');


-- =========================
-- LIKE
-- поиск по шаблону
-- =========================

SELECT *
FROM users
WHERE email LIKE '%gmail.com';


-- =========================
-- ORDER BY
-- сортировка
-- =========================

SELECT *
FROM users
ORDER BY created_at DESC;


-- =========================
-- LIMIT
-- ограничение количества
-- =========================

SELECT *
FROM users
LIMIT 10;


-- =========================
-- DISTINCT
-- уникальные значения
-- =========================

SELECT DISTINCT status
FROM users;


-- =========================
-- COUNT
-- количество записей
-- =========================

SELECT COUNT(*)
FROM users;


-- =========================
-- SUM / AVG / MIN / MAX
-- агрегатные функции
-- =========================

SELECT SUM(amount)
FROM orders;


SELECT AVG(amount)
FROM orders;


SELECT MIN(amount)
FROM orders;


SELECT MAX(amount)
FROM orders;


-- =========================
-- GROUP BY
-- группировка
-- =========================

SELECT status, COUNT(*)
FROM users
GROUP BY status;


-- =========================
-- HAVING
-- фильтр после группировки
-- =========================

SELECT status, COUNT(*)
FROM users
GROUP BY status
HAVING COUNT(*) > 10;


-- =========================
-- INSERT
-- создание тестовых данных
-- =========================

INSERT INTO users(name, email, age)
VALUES ('Test User', 'test@test.com', 25);


-- =========================
-- UPDATE
-- изменение данных
-- =========================

UPDATE users
SET status = 'active'
WHERE id = 1;


-- =========================
-- DELETE
-- удаление данных
-- =========================

DELETE FROM users
WHERE id = 1;


-- =========================
-- JOIN
-- связь таблиц
-- =========================

SELECT users.name, orders.amount
FROM users
JOIN orders
ON users.id = orders.user_id;


-- =========================
-- LEFT JOIN
-- =========================

SELECT users.name, orders.amount
FROM users
LEFT JOIN orders
ON users.id = orders.user_id;


-- =========================
-- QA scenarios
-- =========================

-- Проверка регистрации:
-- пользователь появился в users

SELECT *
FROM users
WHERE email = 'test@test.com';


-- Проверка заказа:
-- после покупки появился заказ

SELECT *
FROM orders
WHERE user_id = 1;


-- Проверка изменения профиля:

SELECT *
FROM users
WHERE id = 1;