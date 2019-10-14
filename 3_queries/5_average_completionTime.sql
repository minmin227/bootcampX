SELECT students.name as student, AVG(assignment_submissions.duration) as average_duration_time
FROM students JOIN assignment_submissions ON (students.id = student_id)
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY average_duration_time DESC;