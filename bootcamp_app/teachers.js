const { Pool } = require('pg');
const myargs = process.argv.slice(2);

const pool = new Pool ({
  user: 'vagrant',
  password: 'Rm!t1234',
  host:'localhost',
  database: 'vagrant'
})

pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = '${myargs[0]}'
ORDER BY teacher;
`)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.teacher}`);
  })
});