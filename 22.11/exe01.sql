CREATE DATABASE db_RH;

USE db_RH;

-- criando tabela e colocando atributos 
CREATE TABLE tb_RH( 
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    cargo VARCHAR(100),
    data_nascimento DATE, 
    data_admissao DATE,  
    salario DECIMAL(10, 2) NOT NULL, 
    PRIMARY KEY(id)
);

-- add colaboradores 
INSERT INTO tb_RH (nome, cargo, data_nascimento, data_admissao, salario) 
VALUES ("Guilherme", "Estagiario de TI", "2000-01-10", "2023-03-23", 1900);

INSERT INTO tb_RH (nome, cargo, data_nascimento, data_admissao, salario) 
VALUES ("Felipe", "Jovem Aprendiz", "2007-03-12", "2023-07-23", 700);

INSERT INTO tb_RH (nome, cargo, data_nascimento, data_admissao, salario) 
VALUES ("Geandro", "Quality Assurcy Senior", "1989-05-10", "2017-04-23", 16900);

INSERT INTO tb_RH (nome, cargo, data_nascimento, data_admissao, salario) 
VALUES ("Lorenna", "Desenvolvedora de Software Pleno", "1987-06-11", "2018-05-23", 9900);

INSERT INTO tb_RH (nome, cargo, data_nascimento, data_admissao, salario) 
VALUES ("Aimee", "Desenvolvedora de Software Junior", "1986-03-12", "2019-07-23", 4900);

-- Retornar todos colaboradores que ganham mais que 2000
SELECT * FROM tb_RH WHERE salario > 2000;

-- Retornar todos colaboradores que ganham menos que 2000
SELECT * FROM tb_RH WHERE salario < 2000;

-- promovendo felipe de jovem aprendiz para JR
UPDATE tb_RH SET cargo = "Desenvolvedora de Software Junior", salario = 4900 WHERE nome = "Felipe";

SELECT * FROM tb_RH;

-- deletando dados de id duplicado
DELETE FROM tb_RH WHERE id in (1);



