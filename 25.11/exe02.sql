CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- Criação da tabela tb_categorias
CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria TEXT
);

-- Criação da tabela tb_pizzas
CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(100) NOT NULL,
    descricao_pizza TEXT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

-- Inserção de registros na tabela tb_categorias
INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES 
    ('Tradicional', 'Pizzas clássicas e populares'),
    ('Gourmet', 'Pizzas com ingredientes sofisticados'),
    ('Vegetariana', 'Pizzas sem carne, com foco em vegetais'),
    ('Especial', 'Receitas exclusivas da casa'),
    ('Doces', 'Pizzas voltadas para sobremesa');

-- Inserção de registros na tabela tb_pizzas
INSERT INTO tb_pizzas (nome_pizza, descricao_pizza, preco, tamanho, id_categoria)
VALUES 
    ('Margherita', 'Molho de tomate, mussarela, manjericão', 130.00, 'Média', 1),
    ('Calabresa', 'Calabresa, cebola, azeitonas', 55.00, 'Grande', 1),
    ('4 Queijos', 'Mussarela, gorgonzola, parmesão, catupiry', 50.00, 'Grande', 2),
    ('Camarão Gourmet', 'Camarão ao molho especial, mussarela', 160.00, 'Média', 2),
    ('Vegetariana Especial', 'Espinafre, tomate seco, queijo de cabra', 48.00, 'Pequena', 3),
    ('Pizza da Casa', 'Molho secreto, 5 queijos, rúcula', 55.00, 'Grande', 4),
    ('Brigadeiro', 'Chocolate, granulado', 25.00, 'Pequena', 5),
    ('Romeu e Julieta', 'Goiabada, queijo', 28.00, 'Média', 5);
    
SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco  BETWEEN 50 AND 150;

SELECT * FROM tb_pizzas WHERE nome_pizza  LIKE "%M%";

SELECT tb_pizzas.id_pizza, tb_pizzas.nome_pizza, tb_pizzas.descricao_pizza, tb_pizzas.preco, tb_pizzas.tamanho, tb_categorias.nome_categoria 
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT tb_pizzas.id_pizza, tb_pizzas.nome_pizza, tb_pizzas.descricao_pizza, tb_pizzas.preco, tb_pizzas.tamanho, tb_categorias.nome_categoria
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id_categoria WHERE tb_categorias.nome_categoria = 'Doces';





