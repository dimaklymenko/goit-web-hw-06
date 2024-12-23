SELECT subj.name AS subject_name
    FROM subjects subj
    JOIN teachers t ON subj.teacher_id = t.id
    WHERE t.id = 1;