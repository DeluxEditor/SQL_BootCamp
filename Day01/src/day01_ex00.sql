SELECT menu.id,
    menu.pizza_name
FROM menu
UNION
SELECT person.id,
    person.name
FROM person;