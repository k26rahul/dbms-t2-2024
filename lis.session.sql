SELECT
  department_code,
  COUNT(*)
FROM
  students
  NATURAL JOIN departments
WHERE
  dob BETWEEN '2003-01-01' AND '2003-12-31'
GROUP BY
  department_code;

SELECT
  *
FROM
  book_catalogue