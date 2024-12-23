SELECT AVG(gr.grade) AS average_grade
FROM grades gr
JOIN subjects subj ON gr.subject_id = subj.id
JOIN teachers t ON subj.teacher_id = t.id
WHERE t.id = 1
;
