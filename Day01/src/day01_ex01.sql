(
    SELECT person.name AS object_name
    FROM person
    ORDER BY name ASC
)
UNION ALL
(
    SELECT menu.pizza_name AS object_name
    FROM menu
    ORDER BY pizza_name
);