SELECT count(assistance_requests.*), students.name 
FROM students JOIN assistance_requests ON (students.id = student_id)
WHERE students.name = 'Elliot Dickinson'
group by name;