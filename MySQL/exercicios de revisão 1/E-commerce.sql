CREATE DATABASE db_commerce;
USE db_commerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT  PRIMARY KEY,
	nome VARCHAR (255),
    cor VARCHAR (150),
    eletronico BOOLEAN,
    marca VARCHAR(255),
    preco DECIMAL
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome, cor, eletronico, marca, preco)
VALUES ("Caderno", "Verde", FALSE, "Tilibra", 22.00 );

INSERT INTO tb_produtos (nome, cor, eletronico, marca, preco)
VALUES ("Celular", "Preto", TRUE, "Iphone", 8499.99 );

INSERT INTO tb_produtos (nome, cor, eletronico, marca, preco)
VALUES ("Televisão", "Preto", TRUE, "LG", 1500.00 );

INSERT INTO tb_produtos (nome, cor, eletronico, marca, preco)
VALUES ("Cadeira Gamer", "Preto e Vermelho", FALSE, "GM Confort", 946.95 );

INSERT INTO  tb_produtos (nome, cor, eletronico, marca, preco)
VALUES ("Garrafa", "Prata", FALSE, "Água", 15.00 );

INSERT INTO tb_produtos (nome, cor, eletronico, marca, preco)
VALUES ("Guitarra", "Vermelho", TRUE, "Music", 947.75);

INSERT INTO tb_produtos (nome, cor, eletronico, marca, preco)
VALUES ("Caneta", "Azul", FALSE, "Bic", 3.50 );

INSERT INTO tb_produtos (nome, cor, eletronico, marca, preco)
VALUES ("notbook'", "Prata", TRUE, "Dell", 2999.00 );

SELECT * FROM tb_produtos WHERE preco>500;

SELECT * FROM tb_produtos WHERE preco<500;

UPDATE tb_produtos SET marca = "Samsung" WHERE id = 2;

UPDATE tb_produtos SET preco = "2500.00" WHERE id = 2;

UPDATE tb_produtos SET nome = "Notbook" WHERE id = 8;

