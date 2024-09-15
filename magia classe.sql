INSERT INTO classe_magia (spell_id, class_id) 
SELECT m.id, c.id
FROM magias m
CROSS JOIN classes c
WHERE (m.spell_name, c.class_name) IN (
    ('Amizade', 'Bruxo'),
    ('Amizade', 'Feiticeiro'),
    ('Amizade', 'Mago'),
    ('Ataque Certeiro', 'Bruxo'),
    ('Ataque Certeiro', 'Feiticeiro'),
    ('Ataque Certeiro', 'Mago'),
    ('Consertar', 'Clérigo'),
    ('Consertar', 'Druida'),
    ('Consertar', 'Feiticeiro'),
    ('Consertar', 'Mago'),
    ('Globos de Luz', 'Feiticeiro'),
    ('Globos de Luz', 'Mago'),
    ('Ilusão Menor', 'Feiticeiro'),
    ('Ilusão Menor', 'Mago'),
    ('Luz', 'Clérigo'),
    ('Luz', 'Feiticeiro'),
    ('Luz', 'Mago'),
    ('Amizade animal', 'Druida'),
    ('Amizade animal', 'Patrulheiro'),
    ('Compreender Idiomas', 'Bruxo'),
    ('Compreender Idiomas', 'Feiticeiro'),
    ('Compreender Idiomas', 'Mago'),
    ('Curar Ferimentos', 'Clérigo'),
    ('Curar Ferimentos', 'Druida'),
    ('Curar Ferimentos', 'Paladino'),
    ('Detectar Magia', 'Clérigo'),
    ('Detectar Magia', 'Druida'),
    ('Detectar Magia', 'Feiticeiro'),
    ('Detectar Magia', 'Mago'),
    ('Detectar Magia', 'Paladino'),
    ('Disfarçar-se', 'Feiticeiro'),
    ('Disfarçar-se', 'Mago'),
    ('Enfeitiçar Pessoa', 'Bruxo'),
    ('Enfeitiçar Pessoa', 'Druida'),
    ('Enfeitiçar Pessoa', 'Feiticeiro'),
    ('Enfeitiçar Pessoa', 'Mago'),
    ('Acalmar Emoções', 'Clérigo'),
    ('Aprimorar Habilidade', 'Clérigo'),
    ('Aprimorar Habilidade', 'Druida'),
    ('Aprimorar Habilidade', 'Feiticeiro'),
    ('Arrombar', 'Feiticeiro'),
    ('Arrombar', 'Mago'),
    ('Boca Encantada', 'Mago'),
    ('Cegueira/Surdez', 'Clérigo'),
    ('Cegueira/Surdez', 'Feiticeiro'),
    ('Cegueira/Surdez', 'Mago'),
    ('Ampliar Plantas', 'Patrulheiro'),
    ('Clarividência', 'Clérigo'),
    ('Clarividência', 'Feiticeiro'),
    ('Clarividência', 'Mago'),
    ('Dificultar Detecção', 'Patrulheiro'),
    ('Dissipar Magia', 'Bruxo'),
    ('Dissipar Magia', 'Clérigo'),
    ('Dissipar Magia', 'Druida'),
    ('Dissipar Magia', 'Feiticeiro'),
    ('Dissipar Magia', 'Mago'),
    ('Dissipar Magia', 'Paladino'),
    ('Enviar Mensagem', 'Clérigo'),
    ('Enviar Mensagem', 'Mago'),
    ('Falar com os Mortos', 'Clérigo'),
    ('Confusão', 'Druida'),
    ('Confusão', 'Feiticeiro'),
    ('Confusão', 'Mago'),
    ('Movimentação Livre', 'Clérigo'),
    ('Movimentação Livre', 'Druida'),
    ('Movimentação Livre', 'Patrulheiro'),
    ('Invisibilidade Maior', 'Feiticeiro'),
    ('Invisibilidade Maior', 'Mago'),
    ('Localizar Criatura', 'Clérigo'),
    ('Localizar Criatura', 'Druida'),
    ('Localizar Criatura', 'Mago'),
    ('Localizar Criatura', 'Paladino'),
    ('Localizar Criatura', 'Patrulheiro'),
    ('Metamorfose', 'Druida'),
    ('Metamorfose', 'Feiticeiro'),
    ('Metamorfose', 'Mago'),
    ('Ancora Planar', 'Bruxo'),
    ('Ancora Planar', 'Clérigo'),
    ('Ancora Planar', 'Druida'),
    ('Ancora Planar', 'Mago'),
    ('Animar Objetos', 'Feiticeiro'),
    ('Animar Objetos', 'Mago'),
    ('Círculo de Teletransporte', 'Feiticeiro'),
    ('Círculo de Teletransporte', 'Mago'),
    ('Conhecimento Lendário', 'Clérigo'),
    ('Conhecimento Lendário', 'Mago'),
    ('Curar Ferimentos em Massa', 'Clérigo'),
    ('Curar Ferimentos em Massa', 'Druida'),
    ('Despertar', 'Druida'),
    ('Ataque Visual', 'Feiticeiro'),
    ('Ataque Visual', 'Mago'),
    ('Encontrar o Caminho', 'Clérigo'),
    ('Encontrar o Caminho', 'Druida'),
    ('Ilusão Programada', 'Mago'),
    ('Proteger Fortaleza', 'Mago'),
    ('Sugestão em Massa', 'Feiticeiro'),
    ('Sugestão em Massa', 'Mago'),
    ('Espada de Mordenkainen', 'Mago'),
    ('Forma Etérea', 'Clérigo'),
    ('Forma Etérea', 'Feiticeiro'),
    ('Forma Etérea', 'Mago'),
    ('Miragem', 'Druida'),
    ('Miragem', 'Mago'),
    ('Mansão Magnifica de Mordenkainen', 'Mago'),
    ('Prisão de Energia', 'Mago'),
    ('Projetar Imagem', 'Mago'),
    ('Dominar Monstro', 'Feiticeiro'),
    ('Dominar Monstro', 'Mago'),
    ('Enfraquecer Intelecto', 'Bruxo'),
    ('Enfraquecer Intelecto', 'Mago'),
    ('Limpar a Mente', 'Mago'),
    ('Palavra de Poder Atordoar', 'Feiticeiro'),
    ('Palavra de Poder Atordoar', 'Mago'),
    ('Palavra de Poder Atordoar', 'Bruxo'),
    ('Palavra de Poder Matar', 'Bruxo'),
    ('Palavra de Poder Matar', 'Feiticeiro'),
    ('Palavra de Poder Matar', 'Mago'),
    ('Metamorfose Verdadeira', 'Druida'),
    ('Metamorfose Verdadeira', 'Mago'),
    ('Sexto Sentido', 'Clérigo'),
    ('Sexto Sentido', 'Druida'),
    ('Prestidigitação', 'Bardo'),
    ('Prestidigitação', 'Feiticeiro'),
    ('Prestidigitação', 'Mago'),
    ('Compreender Idiomas', 'Bardo'),
    ('Escrita ilusória', 'Bardo'),
    ('Escrita ilusória', 'Mago'),
    ('Despedaçar', 'Bardo'),
    ('Despedaçar', 'Feiticeiro'),
    ('Despedaçar', 'Mago'),
    ('Escuridão', 'Feiticeiro'),
    ('Escuridão', 'Mago'),
    ('Imobilizar Pessoa', 'Bardo'),
    ('Imobilizar Pessoa', 'Clérigo'),
    ('Imobilizar Pessoa', 'Druida'),
    ('Imobilizar Pessoa', 'Feiticeiro'),
    ('Imobilizar Pessoa', 'Mago'),
    ('Invisibilidade', 'Bardo'),
    ('Invisibilidade', 'Feiticeiro'),
    ('Invisibilidade', 'Mago'),
    ('Círculo Mágico', 'Clérigo'),
    ('Círculo Mágico', 'Mago'),
    ('Círculo Mágico', 'Paladino'),
    ('Contramágica', 'Feiticeiro'),
    ('Contramágica', 'Mago'),
    ('Forma Gasosa', 'Feiticeiro'),
    ('Forma Gasosa', 'Mago'),
    ('Idiomas', 'Bardo'),
    ('Idiomas', 'Clérigo'),
    ('Idiomas', 'Mago'),
    ('Banimento', 'Clérigo'),
    ('Banimento', 'Feiticeiro'),
    ('Banimento', 'Mago'),
    ('Banimento', 'Paladino'),
    ('Porta Dimensional', 'Feiticeiro'),
    ('Porta Dimensional', 'Mago'),
    ('Terreno Alucinógeno', 'Druida'),
    ('Terreno Alucinógeno', 'Mago'),
    ('Contato Extraplanar', 'Mago'),
    ('Imobilizar Monstro', 'Bardo'),
    ('Imobilizar Monstro', 'Feiticeiro'),
    ('Imobilizar Monstro', 'Mago'),
    ('Sonho', 'Bardo'),
    ('Sonho', 'Mago'),
    ('Vidência', 'Bardo'),
    ('Vidência', 'Clérigo'),
    ('Vidência', 'Mago'),
    ('Círculo da Morte', 'Mago'),
    ('Conjurar Fada', 'Druida'),
    ('Criar Mortos-Vivos', 'Clérigo'),
    ('Criar Mortos-Vivos', 'Mago'),
    ('Carne para Pedra', 'Mago'),
    ('Portal Arcano', 'Feiticeiro'),
    ('Portal Arcano', 'Mago'),
    ('Dedo da Morte', 'Feiticeiro'),
    ('Dedo da Morte', 'Mago'),
    ('Semiplano', 'Mago'),
    ('Aprisionamento', 'Mago'),
    ('Estabilizar', 'Druida'),
    ('Orientação', 'Druida'),
    ('Bênção', 'Paladino'),
    ('Comando', 'Paladino'),
    ('Criar ou Destruir Água', 'Druida'),
    ('Detectar o Bem e Mal', 'Paladino'),
    ('Ajuda', 'Paladino'),
    ('Andar na Água', 'Druida'),
    ('Andar na Água', 'Patrulheiro'),
    ('Andar na Água', 'Feiticeiro'),
    ('Animar mortos', 'Mago'),
    ('Criar Alimentos ', 'Druida'),
    ('Controlar a Água', 'Druida'),
    ('Controlar a Água', 'Mago'),
    ('Moldar Rochas', 'Druida'),
    ('Consagrar', 'Paladino'),
    ('Cura Completa', 'Bardo'),
    ('Cura Completa', 'Druida'),
    ('Símbolo', 'Bardo'),
    ('Símbolo', 'Mago'),
    ('Aura Sagrada', 'Paladino'),
    ('Campo Antimagia', 'Mago'),
    ('Controlar o Clima', 'Druida'),
    ('Controlar o Clima', 'Mago'),
    ('Terremoto', 'Druida'),
    ('Terremoto', 'Feiticeiro'),
    ('Portal ', 'Feiticeiro'),
    ('Portal ', 'Mago'),
    ('Projeção Astral ', 'Mago'),
    ('Projeção Astral ', 'Bruxo'),
    ('Ressurreição Verdadeira', 'Druida'),
    ('Orientação', 'Druida'),
    ('Amizade Animal', 'Bardo'),
    ('Amizade Animal', 'Patrulheiro'),
    ('Criar ou Destruir Água', 'Clérigo'),
    ('Encontrar Armadilhas ', 'Patrulheiro'),
    ('Esfera Flamejante', 'Feiticeiro'),
    ('Esfera Flamejante', 'Mago'),
    ('Ampliar Plantas', 'Patrulheiro'),
    ('Conjurar Animais', 'Patrulheiro'),
    ('Conjurar Elementais Menores', 'Mago'),
    ('Conjurar Seres da Floresta', 'Patrulheiro'),
    ('Conjurar Elemental', 'Mago'),
    ('Banquete de Heróis ', 'Clérigo'),
    ('Mover Terra', 'Feiticeiro'),
    ('Mover Terra', 'Mago'),
    ('Inverter a Gravidade ', 'Feiticeiro'),
    ('Inverter a Gravidade ', 'Mago'),
    ('Tempestade de Fogo', 'Clérigo'),
    ('Tempestade de Fogo', 'Feiticeiro'),
    ('Antipatia/Simpatia ', 'Mago'),
    ('Explosão Solar ', 'Feiticeiro'),
    ('Espirro Ácido ', 'Mago'),
    ('Armadura Arcana', 'Mago'),
    ('Escudo Arcano', 'Mago'),
    ('Alterar-se', 'Mago'),
    ('Aumentar/Reduzir', 'Mago'),
    ('Bola de Fogo', 'Mago'),
    ('Cone de Frio ', 'Mago'),
    ('Criação ', 'Mago'),
    ('Dominar Pessoa', 'Mago'),
    ('Dominar Pessoa', 'Bardo'),
    ('Corrente de Relâmpagos', 'Mago'),
    ('Desintegrar', 'Mago'),
    ('Globo de Invulnerabilidade', 'Mago'),
    ('Bola de Fogo Controlável', 'Mago'),
    ('Rajada Prismática ', 'Mago'),
    ('Teletransporte', 'Mago'),
    ('Teletransporte', 'Bardo'),
    ('Nuvem Incendiária', 'Mago'),
    ('Chuva de Meteoros', 'Mago'),
    ('Desejo', 'Mago'),
    ('Alarme ', 'Patrulheiro'),
    ('Arma Mágica ', 'Paladino')
);