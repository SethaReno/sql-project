SELECT course_name AS 'Course', AVG(grade_value) AS 'Average' 
FROM grades
JOIN course
ON grades.grade_course_id = course_id
GROUP BY course_name
ORDER BY AVG(grade_value) ASC;