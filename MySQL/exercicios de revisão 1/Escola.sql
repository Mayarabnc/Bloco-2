CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    sobrenome VARCHAR(255),
    idade INT,
    classe VARCHAR(255),
    media DOUBLE
);

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes (nome, sobrenome, idade, classe, media)
VALUES ("Mayara", "Bueno Nunes Cabral", 17, "3°A (ensino médio)", 10.0);

INSERT INTO tb_estudantes (nome, sobrenome, idade, classe, media)
VALUES ("Gael", "Fernandes", 16, "2°A (ensino médio)", 8.5);

INSERT INTO tb_estudantes (nome, sobrenome, idade, classe, media)
VALUES ("João", "Lisboa", 14, "9°B", 6.5);

INSERT INTO tb_estudantes (nome, sobrenome, idade, classe, media)
VALUES ("Ana", "Rodrigues", 10, "5°C", 7.5);

INSERT INTO tb_estudantes (nome, sobrenome, idade, classe, media)
VALUES ("Lucas", "Okuma", 11, "4°C", 3.5);

INSERT INTO tb_estudantes (nome, sobrenome, idade, classe, media)
VALUES ("Gilberto", "Silva", 16, "2°B (ensino médio)", 6.5);

INSERT INTO tb_estudantes (nome, sobrenome, idade, classe, media)
VALUES ("Thiago", "Lucabort", 7, "2°B", 5.5);

INSERT INTO tb_estudantes (nome, sobrenome, idade, classe, media)
VALUES ("Emily", "Fernandes", 8, "3°C", 8.5);

SELECT * FROM tb_estudantes WHERE media>7.0;
SELECT * FROM tb_estudantes WHERE media<7.0;

UPDATE tb_estudantes SET media = "5.5" WHERE id = 5;




