CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias (
idCategoria BIGINT AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(255),
entregar BOOLEAN
);

INSERT INTO tb_categorias (descricao, entregar)
VALUE ("Pesado", TRUE);

INSERT INTO tb_categorias (descricao, entregar)
VALUE ("Leve", TRUE);

INSERT INTO tb_categorias (descricao, entregar)
VALUE ("Pesado", FALSE);

INSERT INTO tb_categorias (descricao, entregar)
VALUE ("Leve", FALSE);

INSERT INTO tb_categorias (descricao, entregar)
VALUE ("outro", true);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
preco DOUBLE,
cep VARCHAR(255),
taxa_entrega DOUBLE,
idProdutos BIGINT,

FOREIGN KEY (idProdutos) REFERENCES tb_categorias (idCategoria)
);

INSERT INTO tb_produtos (nome, preco, cep, taxa_entrega, idProdutos)
VALUE ("Cimento", 4000.00, "85764-756", 50.00, 1); 

INSERT INTO tb_produtos (nome, preco, cep, taxa_entrega, idProdutos)
VALUE ("Trena", 20.00, "", 10.00, 4); 

INSERT INTO tb_produtos (nome, preco, cep, taxa_entrega, idProdutos)
VALUE ("Tinta", 149.67, "24398-043", 10.00, 5); 

INSERT INTO tb_produtos (nome, preco, cep, taxa_entrega, idProdutos)
VALUE ("Tijolo", 10000.00, "85764-756", 50.00, 1); 

INSERT INTO tb_produtos (nome, preco, cep, taxa_entrega, idProdutos)
VALUE ("Vergalhão", 55000.00, "09567885-756", 60.00, 1); 

INSERT INTO tb_produtos (nome, preco, cep, taxa_entrega, idProdutos)
VALUE ("Coluna armada", 4356.70, "85764-756", 15.00, 2); 

INSERT INTO tb_produtos (nome, preco, cep, taxa_entrega, idProdutos)
VALUE ("Telha", 1459.00, "23522-023", 10.00, 2); 

INSERT INTO tb_produtos (nome, preco, cep, taxa_entrega, idProdutos)
VALUE ("Areia", 35.00, "123321-232", 10.00, 2); 

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco>100.00;

SELECT * FROM tb_produtos WHERE preco>70.00 AND preco<150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%c%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.idProdutos = tb_categorias.idCategoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.idProdutos = tb_categorias.idCategoria AND entregar = TRUE;
