SELECT professor_name AS "Professor", AVG(grade_value)
FROM course
JOIN professors
ON course.course_professor_id = professors_id
JOIN grades
ON course.course_id = grade_course_id
GROUP BY professor_name;