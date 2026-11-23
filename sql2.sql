-- JOIN QUERIES

-- Question 1

SELECT tourists.first_name, tourists.last_name, countries.country_name

FROM tourists

INNER JOIN countries

ON tourists.country_id = countries.id;

-- Question 2

SELECT tourists., tours.

FROM tourists

INNER JOIN tours

ON tourists.tour_id = tours.id;

-- Question 3

SELECT tourists., tours.

FROM tourists

LEFT JOIN tours

ON tourists.tour_id = tours.id;

-- Question 8

SELECT tourists., tours.

FROM tourists

CROSS JOIN tours;