CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
idCategorias BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(100),
tem_carne BOOLEAN
);

INSERT INTO tb_categorias (categoria, tem_carne)
VALUE ("Salgada", false);

INSERT INTO tb_categorias (categoria, tem_carne)
VALUE ("Doce", false);

INSERT INTO tb_categorias (categoria, tem_carne)
VALUE ("Salgada", true);

INSERT INTO tb_categorias (categoria, tem_carne)
VALUE ("Salgada", false);

INSERT INTO tb_categorias (categoria, tem_carne)
VALUE ("Salgada", false);

INSERT INTO tb_categorias (categoria, tem_carne)
VALUE ("Salgada", true);

INSERT INTO tb_categorias (categoria, tem_carne)
VALUE ("Salgada", true);

INSERT INTO tb_categorias (categoria, tem_carne)
VALUE ("Doce", false);


SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas (
idPizzas BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
preco DECIMAL,
borda_fina BOOLEAN,
borda_recheada BOOLEAN,

FOREIGN KEY (idPizzas) REFERENCES tb_categorias (idCategorias)
);

INSERT INTO tb_pizzas (nome, preco, borda_fina, borda_recheada)
VALUE ("Mussarela", 20.00, false, true);

INSERT INTO tb_pizzas (nome, preco, borda_fina, borda_recheada)
VALUE ("Brigadeiro", 65.00, false, false);

INSERT INTO tb_pizzas (nome, preco, borda_fina, borda_recheada)
VALUE ("Calabresa", 38.90, true, true);

INSERT INTO tb_pizzas (nome, preco, borda_fina, borda_recheada)
VALUE ("Catupiry com milho", 40.00, false, true);

INSERT INTO tb_pizzas (nome, preco, borda_fina, borda_recheada)
VALUE ("Marguerita", 30.00, false, true);

INSERT INTO tb_pizzas (nome, preco, borda_fina, borda_recheada)
VALUE ("Frango com Catupiry", 42.00, true, true);

INSERT INTO tb_pizzas (nome, preco, borda_fina, borda_recheada)
VALUE ("Portuguesa", 45.00, true, true);

INSERT INTO tb_pizzas (nome, preco, borda_fina, borda_recheada)
VALUE ("Banana com canela", 60.00, false, false);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.idPizzas = tb_categorias.idCategorias; 

SELECT * FROM tb_pizzas WHERE preco> 45.00;

SELECT * FROM tb_pizzas WHERE preco>50 AND preco<100;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.idPizzas = tb_categorias.idCategorias and categoria = "doce";

-- drop database db_pizzaria_legal;