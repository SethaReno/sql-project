SELECT student_name AS "Student", course_name AS "Course"
FROM grades
JOIN course
ON grades.grade_course_id = course_id
JOIN students
ON grades.grade_student_id = students_id
ORDER BY course_name ASC;