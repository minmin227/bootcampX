SELECT assignments.day as day, count(assignments.*) as total_assignments, sum(assignments.duration) as duration
FROM assignments 
GROUP BY day 
ORDER BY day;