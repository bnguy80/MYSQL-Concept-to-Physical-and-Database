CREATE VIEW concat_name AS 
SELECT 
CONCAT(first_name, ' ', last_name) AS employee_full_name, employee_id, hire_date, job_title, shop_id
FROM EMPLOYEE
WHERE first_name IS NOT NULL AND last_name IS NOT NULL;