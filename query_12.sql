SELECT 
s.name as student_name , 
subj.name as subject_name , 
gr.grade ,
gr.grade_date 
FROM grades gr
JOIN subjects subj ON gr.subject_id = subj.id
JOIN students s ON gr.student_id = s.id 
JOIN groups g  ON s.group_id = g.id 
WHERE g.id = 3
AND subj.id = 2
AND gr.grade_date = (
    SELECT MAX(gr2.grade_date)
    FROM grades gr2
    JOIN students s2 ON gr2.student_id = s2.id
    WHERE s2.group_id = g.id AND gr2.subject_id = subj.id
);







