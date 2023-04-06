SELECT pizza_name, price, pz.name AS pizzeria_name, visit_date
FROM person_visits AS pv
INNER JOIN person ON person.id = pv.person_id
INNER JOIN pizzeria AS pz ON pz.id = pv.pizzeria_id
INNER JOIN menu ON pz.id = menu.pizzeria_id
WHERE person.name = 'Kate'
AND price BETWEEN 800 AND 1000
ORDER BY pizza_name, price, pizzeria_name;