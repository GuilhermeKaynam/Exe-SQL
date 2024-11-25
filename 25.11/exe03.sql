CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria TEXT
);

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    descricao_produto TEXT NOT NULL,
    preco DECIMAL(10 , 2 ) NOT NULL,
    estoque INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria)
        REFERENCES tb_categorias (id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES 
    ('Medicamentos', 'Produtos farmacêuticos para tratamentos'),
    ('Higiene Pessoal', 'Itens para cuidados diários de higiene'),
    ('Suplementos', 'Produtos vitamínicos e nutricionais'),
    ('Dermocosméticos', 'Produtos para cuidado da pele'),
    ('Infantil', 'Produtos para crianças e bebês');
    
INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque, id_categoria)
VALUES 
    ('Paracetamol', 'Analgésico e antitérmico 500mg', 10.50, 100, 1),
    ('Ibuprofeno', 'Anti-inflamatório 200mg', 15.00, 80, 1),
    ('Shampoo Anticaspa', 'Controle de caspa 200ml', 25.90, 50, 2),
    ('Sabonete Líquido', 'Sabonete suave para pele sensível', 12.00, 150, 2),
    ('Vitamina C 1000mg', 'Suplemento vitamínico efervescente', 20.00, 120, 3),
    ('Ômega 3', 'Suplemento nutricional 120 cápsulas', 45.00, 60, 3),
    ('Protetor Solar FPS 50', 'Proteção UVA/UVB 120ml', 39.90, 70, 4),
    ('Fralda Infantil', 'Fralda descartável tamanho G', 59.90, 200, 5);
    
    SELECT * FROM tb_produtos WHERE preco > 50;
    SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 50;
    
	SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";
    
SELECT tb_produtos.*, tb_categorias.nome_categoria, tb_categorias.descricao_categoria FROM tb_produtos LEFT JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT tb_produtos.*, tb_categorias.nome_categoria, tb_categorias.descricao_categoria FROM tb_produtos LEFT JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id_categoria WHERE tb_categorias.nome_categoria = 'Medicamentos';

    
    
