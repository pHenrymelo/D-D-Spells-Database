-- Consultas basicas

-- magias
select * from magias;

-- apenas truques ( magias que não gastam espaços de magia )
select * from magias where spell_level = 0;

-- escolas de magia existentes
select * from escolas;

-- vamos às consultas importantes de fato:
-- em dungeons and dragons as magias são exclusivas de uma determinada classe, sendo que apenas personages daquela classe aprendem aquelas magias...
-- no entanto algumas magias tambem podem ser compartilhadas por mais de uma classe
-- ou personagens podem ter mais de uma classe, o que os impede de atingir magias de  niveis mais altos mas possibilita uma maior gama de magias para aprendizado.

-- Criando uma tabela view com informações importantes das magias 
CREATE VIEW view_magias_detalhes AS
SELECT 
    m.spell_name AS nome_magia,
    e.school_name AS nome_escola,
    c.class_name AS nome_classe,
    m.spell_level AS nivel_conjuracao
FROM 
    magias m
    JOIN escolas e ON m.school = e.id
    JOIN classe_magia cm ON m.id = cm.spell_id
    JOIN classes c ON cm.class_id = c.id;

select * from view_magias_detalhes order by nivel_conjuracao;

-- Cenario 1: criei um personagem bardo e sou nivel 1, tenho portanto acesso a truques e magias de nivel 1 da classe bardo
SELECT m.spell_name, m.spell_description, m.spell_level, c.class_name
FROM magias m
JOIN classe_magia cm ON m.id = cm.spell_id
JOIN classes c ON cm.class_id = c.id
WHERE c.class_name = 'Bardo'
AND m.spell_level IN (0, 1)
ORDER BY m.spell_level, m.spell_name;

-- Cenario 2: criei um personagem bruxo e subi 3 niveis, sendo 2 deles de bruxo e 1 de feiticeiro, assim posso aprender truques de ambas as classes e magias de bruxo nivel 1 e 2 e de feiticeiro de nivel 1
SELECT DISTINCT m.spell_name, m.spell_description, m.spell_level, c.class_name
FROM magias m
JOIN classe_magia cm ON m.id = cm.spell_id
JOIN classes c ON cm.class_id = c.id
WHERE (c.class_name = 'Bruxo' AND m.spell_level IN (0, 1, 2))
   OR (c.class_name = 'Feiticeiro' AND m.spell_level IN (0, 1))
ORDER BY c.class_name, m.spell_level, m.spell_name;

-- Cenario 3: criei um personagem mago, e quando atingi o nivel 2 escolhi minha escola de conjuração como Necromancia, sendo um mago necromante, posso aprender magias de necromancia pela metade do custo em ouro e tempo dispondo de espaços do nivel adequado
-- No decorrer da aventura encontrei muitos pergaminhos e ganhei experiencia cehgando ao nivel 17, podendo aprender ate magias de nivel 9
-- quais as magias que posso aprender com desconto?

SELECT nome_magia, nivel_conjuracao
FROM view_magias_detalhes
WHERE nome_escola = 'Necromancia' AND nome_classe = 'Mago' AND nivel_conjuracao BETWEEN 0 AND 9
ORDER BY  nivel_conjuracao, nome_magia;

-- Cenario 4: druida e patrulheiro são classes semelhantes, portanto tem magias parecidas, quais magias são comuns às duas classes

SELECT nome_magia, nome_escola, nivel_conjuracao
FROM view_magias_detalhes
WHERE nome_classe IN ('Druida', 'Patrulheiro')
GROUP BY nome_magia, nome_escola, nivel_conjuracao
HAVING COUNT(DISTINCT nome_classe) = 2
ORDER BY nivel_conjuracao, nome_magia;

-- Cenario 5: clerigo e paladino são classes semelhantes, portanto tem magias parecidas, quais magias são comuns às duas classes

SELECT nome_magia, nome_escola, nivel_conjuracao
FROM view_magias_detalhes
WHERE nome_classe IN ('Clérigo', 'Paladino')
GROUP BY nome_magia, nome_escola, nivel_conjuracao
HAVING COUNT(DISTINCT nome_classe) = 2
ORDER BY nivel_conjuracao, nome_magia;

-- Cenario 6: classes que não possuem magias

SELECT c.class_name AS classes_sem_magias
FROM classes c
LEFT JOIN classe_magia cm ON c.id = cm.class_id
WHERE cm.spell_id IS NULL
ORDER BY c.class_name;

-- Cenario 6.1: quantidade de magias de cada classe 
SELECT c.class_name, COUNT(cm.spell_id) AS numero_de_magias
FROM classes c
LEFT JOIN classe_magia cm ON c.id = cm.class_id
GROUP BY c.id, c.class_name
ORDER BY numero_de_magias, c.class_name;

-- Cenario 7: meu personagem é um ladino, que a principio não aprende magias, mas pegou o arquetipo de trapaceiro arcano, podendo aprender magias de Mago, contudo no maximo ate o nivel 4
SELECT DISTINCT 'Ladino' AS classe_aprendiz, m.spell_name AS nome_magia, m.spell_level AS nivel_conjuracao, e.school_name AS escola_magia, m.spell_description AS descricao_magia
FROM magias m
    JOIN classe_magia cm ON m.id = cm.spell_id
    JOIN classes c ON cm.class_id = c.id
    JOIN escolas e ON m.school = e.id
WHERE c.class_name = 'Mago' AND m.spell_level BETWEEN 0 AND 4
ORDER BY m.spell_level, m.spell_name;

