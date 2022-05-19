CREATE DATABASE db_quitanda;
USE db_quitanda;

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255),
quantidade INT,
preco DECIMAL,
perecivel BOOLEAN,
localizacao VARCHAR(255),

PRIMARY KEY (id)
);

SELECT * FROM tb_produto;

INSERT INTO tb_produto (nome, quantidade, preco, perecivel, localizacao)
VALUES ("alface", 30, 8.00, true, "Setor 1");

INSERT INTO tb_produto (nome, quantidade, preco, perecivel, localizacao)
VALUES ("maçã", 50, 6.00, true, "Setor 2");

INSERT INTO tb_produto (nome, quantidade, preco, perecivel, localizacao)
VALUES ("morango", 70, 10.00, true, "Setor 2");

INSERT INTO tb_produto (nome, quantidade, preco, perecivel, localizacao)
VALUES ("brócolis", 40, 7.50, true, "Setor 1");

INSERT INTO tb_produto (nome, quantidade, preco, perecivel, localizacao)
VALUES ("ovo", 30, 10.00, true, "Setor 3");

INSERT INTO tb_produto (nome, quantidade, preco, perecivel, localizacao)
VALUES ("fruta especial da malasia ", 10, 60.00, true, "Setor 2");



CREATE TABLE tb_categoria (
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(255),

PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES tb_produto (id)
);

INSERT tb_categoria (categoria)
VALUES ("Verdura");

INSERT tb_categoria (categoria)
VALUES ("Fruta");

INSERT tb_categoria (categoria)
VALUES ("Fruta");

INSERT tb_categoria (categoria)
VALUES ("Verdura");

INSERT tb_categoria (categoria)
VALUES ("Origem animal");


SELECT * FROM tb_produto inner join tb_categoria on tb_produto.id = tb_categoria.id;

SELECT * FROM tb_categoria;


SELECT * FROM tb_produto WHERE preco>50.00;

SELECT * FROM tb_produto WHERE nome LIKE  '%a%';
