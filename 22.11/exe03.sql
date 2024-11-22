CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_escola (
    id BIGINT AUTO_INCREMENT,
    nome_aluno VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    ano_letivo INT NOT NULL,
    nota DECIMAL (6, 2) NOT NULL,
    aprovado_reprovado VARCHAR(100),
    PRIMARY KEY (id)
);

INSERT INTO tb_escola (nome_aluno, data_nascimento, ano_letivo, nota, aprovado_reprovado)
VALUES
	("Guilherme Kaynam", "2006-01-10", 3, 10.0, "Aprovado"),
    ("Geandro ", "1989-05-10", 3, 4.5, "Reprovado"),
    ("Lorenna", "1987-06-11", 3, 8.9, "Aprovado"),
    ("Aimee", "1986-03-12", 3, 9.9, "Aprovado"),
	("Felipe", "2007-03-12", 3, 3.5, "Reprovado");
    
SELECT * FROM tb_escola;

UPDATE tb_escola SET nota = 6.9 WHERE nome_aluno = "Lorenna";

SELECT * FROM tb_escola WHERE nota > 7.0;
SELECT * FROM tb_escola WHERE nota < 7.0;

-- para ver alunos aprovado 
SELECT * FROM tb_escola WHERE  aprovado_reprovado = "Aprovado";

-- para ver alunos reprovados 
SELECT * FROM tb_escola WHERE  aprovado_reprovado = "Reprovado";

