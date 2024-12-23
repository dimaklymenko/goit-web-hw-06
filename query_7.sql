SELECT s.name AS student_name, gr.grade, gr.grade_date
FROM grades gr
JOIN students s ON gr.student_id = s.id
JOIN groups g ON s.group_id = g.id
JOIN subjects subj ON gr.subject_id = subj.id
WHERE g.id = 1 AND subj.id = 1  ;
