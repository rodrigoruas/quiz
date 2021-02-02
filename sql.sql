-- 6. What's the query to get books written before 1985?

SELECT *
FROM books
WHERE publishing_year < 1985;


-- 7. What's the query get the 3 most recent
--    books written by Jules Verne?

SELECT *
FROM books
JOIN authors ON authors.id = books.author_id
WHERE authors.name = 'Jules Verne'
ORDER BY books.publishing_year DESC
LIMIT 3;

SELECT *
FROM authors
JOIN books ON authors.id = books.author_id
WHERE authors.name = 'Jules Verne'
ORDER BY books.publishing_year DESC
LIMIT 3;
