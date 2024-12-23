SELECT subj.name AS course_name
FROM subjects subj
JOIN grades gr ON subj.id = gr.subject_id
JOIN students s ON gr.student_id = s.id
JOIN teachers t ON subj.teacher_id = t.id 
WHERE s.id = 1 AND t.id = 1
;