SELECT c.company_code, c.founder, COUNT(DISTINCT e.lead_manager_code), COUNT(DISTINCT e.senior_manager_code), COUNT(DISTINCT e.manager_code), COUNT(DISTINCT e.employee_code)
FROM Company AS c
LEFT JOIN Employee AS e
USING(company_code)
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;
