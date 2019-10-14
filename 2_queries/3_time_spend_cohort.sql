SELECT SUM(duration)
FROM students JOIN assignment_submissions ON (students.id = student_id)
WHERE cohort_id = (SELECT id FROM cohorts WHERE name = 'FEB12');