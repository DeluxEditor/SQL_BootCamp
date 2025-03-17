SELECT p.id AS "person.id", p.name AS "person.name", p.gender, p.address, 
    piz.id AS "pizzeria.id", piz.name AS "pizzeria.name", piz.rating
FROM person p, pizzeria piz
ORDER BY p.id, piz.id