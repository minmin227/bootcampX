SELECT cohorts.name as cohort, COUNT(assignment_submissions.*) as total_sub
FROM students JOIN assignment_submissions ON (student_id = students.id) JOIN cohorts ON (cohorts.id = cohort_id)
GROUP BY cohorts.name
ORDER BY total_sub DESC;

-- SELECT cohorts.name FROM cohorts JOIN students ON(cohorts.id = cohort_id);