SELECT COUNT(assistance_requests.*), teachers.name 
from  teachers JOIN assistance_requests ON teachers.id = teacher_id
where name = 'Waylon Boehm'
group by teachers.name;