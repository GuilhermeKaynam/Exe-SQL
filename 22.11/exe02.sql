CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_ecommerce (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10 , 2 ) NOT NULL,
    quantidade_estoque INT NOT NULL,
    cor VARCHAR(100),
    PRIMARY KEY (id)
);

INSERT INTO tb_ecommerce (nome, descricao, preco, quantidade_estoque, cor)
VALUES
    ("Iphone 16", "256GB de armazenamento e 8GB de RAM", 14999.99, 50, "Azul"),
    ("Ipad MINI", "128GB de armazenamento e 6GB de RAM", 4999.99, 35, "Cinza"),
    ("Apple Watch", "Pusseira em silicone", 2999.99, 73, "Preto"),
    ("MacBook Air", "Memória LPDDR4X de 16 GB com 3733 MHz", 7999.99, 15, "Prata"),
    ("Air Pods", "Fone com cancelamento de ruido", 999.99, 200, "Branco");
    
    SELECT * FROM tb_ecommerce;
    
	SELECT * FROM tb_ecommerce WHERE preco > 500;
	SELECT * FROM tb_ecommerce WHERE preco < 500;
    
    UPDATE tb_ecommerce SET preco = 890.99 WHERE nome = "Air Pods";
    
