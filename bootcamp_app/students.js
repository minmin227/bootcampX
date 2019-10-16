const { Pool } = require('pg');
const myargs = process.argv.slice(2);

const pool = new Pool ({
  user: 'vagrant',
  password: 'Rm!t1234',
  host:'localhost',
  database: 'vagrant'
})

  pool.query(`
  SELECT students.id as id, students.name as student, cohorts.name as cohort
  FROM students JOIN cohorts ON cohort_id = cohorts.id
  LIMIT 5;
  `)
  .then(res => {
    res.rows.forEach (user => {
      console.log(`${user.student} has and id of ${user.id} and was in cohort named ${user.cohort}`);
    })
  })
  .catch(err => console.error('query error', err.stack));


  pool.query(`
  SELECT students.name as student, students.id as id, cohorts.name as cohort
  FROM students JOIN cohorts ON cohort_id = cohorts.id
  WHERE cohorts.name LIKE '%myargs[0]%'
  `)
  .then(res => {
    res.rows.forEach (user => {
      console.log(`${user.student} has and id of ${user.id} and was in cohort named ${user.cohort}`);
    })
  })
  .catch(err => console.error('query error', err.stack));
