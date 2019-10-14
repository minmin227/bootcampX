
select students.name, count(assignment_submissions.*) as total_submit
FROM assignment_submissions join students ON (students.id = student_id)
GROUP BY students.name
HAVING count(assignment_submissions.*) < 100