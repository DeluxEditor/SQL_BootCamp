-- Мой, думаю компактный и логичный вариант
SELECT p.name AS person_name,
    m.pizza_name,
    piz.name AS pizzeria_name
FROM menu m
    JOIN pizzeria piz ON piz.id = m.pizzeria_id
    JOIN person_order po ON po.menu_id = m.id
    JOIN person p ON p.id = po.person_id
WHERE p.id = po.person_id
    AND m.id = po.menu_id
ORDER BY person_name,
    pizza_name,
    pizzeria_name ASC;
-- Аналогичный вариант
SELECT (
        SELECT name
        FROM person
        WHERE id = person_order.person_id
    ) AS person_name,
    (
        SELECT pizza_name
        FROM menu
        WHERE id = person_order.menu_id
    ) AS pizza_name,
    (
        SELECT name
        FROM pizzeria
        WHERE id = m.pizzeria_id
    ) AS pizzeria_name
FROM person_order
    JOIN menu m ON person_order.menu_id = m.id
    JOIN person ON person.id = person_order.person_id
ORDER BY person_name,
    pizza_name,
    pizzeria_name;