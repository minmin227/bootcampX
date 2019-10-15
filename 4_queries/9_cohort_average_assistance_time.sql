SELECT AVG(total_assistance_time)
FROM(
SELECT cohorts.name as cohort, sum(completed_at - started_at) as total_assistance_time
FROM students JOIN cohorts ON cohorts.id = cohort_id
JOIN assistance_requests ON students.id = student_id
GROUP BY cohort
) 
as average_total_assistance;