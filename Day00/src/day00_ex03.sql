SELECT DISTINCT person_id,
    pizzeria_id,
    visit_date
FROM person_visits
WHERE pizzeria_id = 2
    OR visit_date between '2022/01/06' AND '2022/01/09'
ORDER BY person_id DESC;