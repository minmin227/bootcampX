SELECT students.name as student, AVG(assignments.duration) as all_students_average, AVG(assignment_submissions.duration) as student_average
FROM assignment_submissions JOIN students ON (students.id = student_id) JOIN assignments ON (assignment_id  = assignments.id)
WHERE end_date IS NULL
GROUP BY student
HAVING AVG(assignments.duration) > AVG(assignment_submissions.duration)
ORDER BY student_average;