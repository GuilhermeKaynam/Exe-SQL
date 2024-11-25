CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(50) NOT NULL,  -- Tipo da classe, como "Mago", "Guerreiro", etc.
    habilidade_especial VARCHAR(100) NOT NULL  -- Habilidade especial da classe
);

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)  -- Relacionamento com a tabela tb_classes
);

INSERT INTO tb_classes (nome, tipo, habilidade_especial) VALUES
('Guerreiro', 'Físico', 'Golpe Poderoso'),
('Mago', 'Mágico', 'Feitiço de Fogo'),
('Arqueiro', 'Ranged', 'Tiro Perfurante'),
('Assassino', 'Físico', 'Ataque Silencioso'),
('Curandeiro', 'Suporte', 'Cura Rápida');

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, classe_id) VALUES
('Geandro', 2500, 1800, 1),  -- Guerreiro
('Felipe', 1500, 1300, 2),  -- Mago
('Guilherme', 2200, 1100, 3),  -- Arqueiro
('Gabriel', 2100, 1200, 4),    -- Assassino
('Gustavo', 1800, 1400, 2),  -- Mago
('Robson', 2000, 1300, 3),   -- Arqueiro
('Bruce', 2700, 1600, 1),    -- Guerreiro
('Willian', 1700, 1100, 5);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

-- Selecionando personagens com poder de ataque é maior que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- Selecionando personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- Selecionando personagens que tem a letra 'C' no nome
SELECT * FROM tb_personagens WHERE nome LIKE '%G%';

-- Juntando as tabelas tb_personagens e tb_classes
SELECT p.nome AS personagem_nome, p.poder_ataque, p.poder_defesa, c.nome AS classe_nome FROM tb_personagens p 
INNER JOIN tb_classes c ON p.classe_id = c.id;

-- Juntando as tabelas tb_personagens e tb_classes para selecionar apenas os personagens da classe "Arqueiro"
SELECT p.nome AS personagem_nome, p.poder_ataque, p.poder_defesa, c.nome AS classe_nome FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id WHERE c.nome = 'Arqueiro';




