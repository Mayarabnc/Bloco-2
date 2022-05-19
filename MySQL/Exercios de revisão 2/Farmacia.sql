CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
idCategoria BIGINT AUTO_INCREMENT PRIMARY KEY,
precisa_de_receita BOOLEAN,
categoria VARCHAR(200)
);

INSERT INTO tb_categorias (precisa_de_receita, categoria)
VALUE (false, "Remédio");

INSERT INTO tb_categorias (precisa_de_receita, categoria)
VALUE (true, "Remédio");

INSERT INTO tb_categorias (precisa_de_receita, categoria)
VALUE (true, "Remédio");

INSERT INTO tb_categorias (precisa_de_receita, categoria)
VALUE (true, "Remédio");

INSERT INTO tb_categorias (precisa_de_receita, categoria)
VALUE (false, "Remédio");

INSERT INTO tb_categorias (precisa_de_receita, categoria)
VALUE (false, "Remédio");

INSERT INTO tb_categorias (precisa_de_receita, categoria)
VALUE (false, "Remédio");

INSERT INTO tb_categorias (precisa_de_receita, categoria)
VALUE (false, "conveniencias");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produto (
idProduto BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
nome_generico VARCHAR(255),
preco DOUBLE,
dosagem VARCHAR(50),
estoque INT,

FOREIGN KEY (idProduto) REFERENCES tb_categorias(idCategoria)
);

INSERT INTO tb_produto(nome, nome_generico, preco, dosagem, estoque)
VALUE("Amoxil", "Amoxicilina", 56.49, "500mg", 50);

INSERT INTO tb_produto(nome, nome_generico, preco, dosagem, estoque)
VALUE("Augmentin", "Amoxicilina/clavulanato", 39.08, "125mg", 100);

INSERT INTO tb_produto(nome, nome_generico, preco, dosagem, estoque)
VALUE("Adderall XR 10", "Anfetamina", 56.00, "18mg", 30);

INSERT INTO tb_produto(nome, nome_generico, preco, dosagem, estoque)
VALUE("Benazepril", "Benazeprila", 103.90, "5mg", 50);

INSERT INTO tb_produto(nome, nome_generico, preco, dosagem, estoque)
VALUE("Tylenol", "Paracetamol", 32.82, "750mg", 1000);

INSERT INTO tb_produto(nome, nome_generico, preco, dosagem, estoque)
VALUE("Apraclonidina", "IOPIDINE", 25.04, "5mg", 100);

INSERT INTO tb_produto(nome, nome_generico, preco, dosagem, estoque)
VALUE("Soro para inalador", "Soro fisiológico", 3.24, "500ml", 500);

INSERT INTO tb_produto(nome, nome_generico, preco, dosagem, estoque)
VALUE("Trident", "Chiclete", 6.29, "6 por pacote", 5000);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto where preco>50.00;

SELECT * FROM tb_produto where preco>5.00 and preco<60.00;

SELECT * FROM tb_produto WHERE nome LIKE '%c%';

SELECT * FROM tb_produto INNER JOIN tb_categorias ON tb_produto.idProduto = tb_categorias.idCategoria;

SELECT * FROM tb_produto INNER JOIN tb_categorias ON tb_produto.idProduto = tb_categorias.idCategoria and 
categoria = "conveniencias";