INSERT INTO classe_magia (spell_id, class_id)
SELECT m.id, c.id
FROM magias m
JOIN classes c ON c.class_name = 'Bardo'
WHERE m.id <= 57

UNION ALL

SELECT m.id, c.id
FROM magias m
JOIN classes c ON c.class_name = 'Bruxo'
WHERE m.id > 57 AND m.id <= 90

UNION ALL

SELECT m.id, c.id
FROM magias m
JOIN classes c ON c.class_name = 'Clérigo'
WHERE m.id > 90 AND m.id <= 127

UNION ALL

SELECT m.id, c.id
FROM magias m
JOIN classes c ON c.class_name = 'Druida'
WHERE m.id > 127 AND m.id <= 161

UNION ALL

SELECT m.id, c.id
FROM magias m
JOIN classes c ON c.class_name = 'Feiticeiro'
WHERE m.id > 161 AND m.id <= 179

UNION ALL

SELECT m.id, c.id
FROM magias m
JOIN classes c ON c.class_name = 'Mago'
WHERE m.id > 179 AND m.id <= 191;