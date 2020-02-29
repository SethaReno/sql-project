SELECT professor_name AS 'Professor', student_name AS 'Student', COUNT(*) AS common_courses
FROM grades
JOIN students
ON grades.grade_student_id = students.students_id
JOIN course
ON grades.grade_course_id = course.course_id
JOIN professors
ON course.course_professor_id = professors.professors_id
GROUP BY professor_name, student_name
ORDER BY common_courses DESC;
