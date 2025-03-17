SELECT order_date AS action_date,
    (SELECT person.name FROM person WHERE person_id = person.id ) as person_name
FROM person_order
INTERSECT
SELECT visit_date,
    (SELECT person.name FROM person WHERE person_id = person.id) as person_name
FROM person_visits
ORDER BY action_date ASC,
    person_name DESC