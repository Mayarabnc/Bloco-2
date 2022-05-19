CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
idCategoria BIGINT AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR (255),
ativo BOOLEAN
);

INSERT INTO tb_categorias (descricao, ativo)
VALUE ("Bovino", true);

INSERT INTO tb_categorias (descricao, ativo)
VALUE ("Suino", true);

INSERT INTO tb_categorias (descricao, ativo)
VALUE ("Aves", true);

INSERT INTO tb_categorias (descricao, ativo)
VALUE ("imbutidos", true);

INSERT INTO tb_categorias (descricao, ativo)
VALUE ("outros", true);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
preco DECIMAL,
qtProduto INT,
idProduto BIGINT,

FOREIGN KEY (idProduto) REFERENCES tb_categorias (idCategoria)
);

INSERT INTO tb_produtos (nome, preco, qtProduto, idProduto)
VALUES ("Picanha", 146.00, 40, 1);

INSERT INTO tb_produtos (nome, preco, qtProduto, idProduto)
VALUES ("coxa de frango", 45.00, 60, 3);

INSERT INTO tb_produtos (nome, preco, qtProduto, idProduto)
VALUES ("Bacon", 65.00, 100, 1);

INSERT INTO tb_produtos (nome, preco, qtProduto, idProduto)
VALUES ("hamburguer", 60.00, 70, 4);

INSERT INTO tb_produtos (nome, preco, qtProduto, idProduto)
VALUES ("Cupim", 30.00, 40, 1);

INSERT INTO tb_produtos (nome, preco, qtProduto, idProduto)
VALUES ("Peito de frango", 80.00, 50, 3);

INSERT INTO tb_produtos (nome, preco, qtProduto, idProduto)
VALUES ("Salame", 53.00, 35, 4);

INSERT INTO tb_produtos (nome, preco, qtProduto, idProduto)
VALUES ("Carvão", 45.00, 40, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco>50.00;

SELECT * FROM tb_produtos WHERE preco>50.00 and preco<150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%c%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.idProduto = tb_categorias.idCategoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.idProduto = tb_categorias.idCategoria AND descricao = "imbutidos";
