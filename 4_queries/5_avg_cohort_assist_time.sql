SELECT cohorts.name as cohort, AVG(completed_at - started_at) as average 
FROM students JOIN assistance_requests ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohort
ORDER BY average;