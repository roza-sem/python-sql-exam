-- GROUP BY QUERIES

-- Question 1

SELECT genre, COUNT(*) AS movie_count

FROM movies

GROUP BY genre;

-- Question 2

SELECT year, SUM(revenue) AS total_revenue

FROM movies

GROUP BY year;

-- Question 3

SELECT genre, AVG(revenue) AS average_revenue

FROM movies

GROUP BY genre;

-- Question 7

SELECT genre, COUNT(*) AS movie_count

FROM movies

GROUP BY genre

HAVING COUNT(*) > 2;


