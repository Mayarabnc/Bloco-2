CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categoria (
idCategoria BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(70),
curso_online BOOLEAN
);

INSERT INTO tb_categoria(tipo, curso_online)
VALUE ("java", true);

INSERT INTO tb_categoria(tipo, curso_online)
VALUE ("Phyton", true);

INSERT INTO tb_categoria(tipo, curso_online)
VALUE ("muisica", true);

INSERT INTO tb_categoria(tipo, curso_online)
VALUE ("desenvolvimento de habilidades ", true);

INSERT INTO tb_categoria(tipo, curso_online)
VALUE ("outro", true);

SELECT * FROM tb_categoria;

CREATE TABLE tb_curso (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
duracao VARCHAR(255),
preco DOUBLE,
idCurso BIGINT,

FOREIGN KEY (idCurso) REFERENCES tb_categoria (idCategoria)
);

INSERT INTO tb_curso (nome, duracao, preco, idCurso)
VALUE ("Pessoa desenvolvedora web","3 meses", 0, 1);

INSERT INTO tb_curso (nome, duracao, preco, idCurso)
VALUE ("Pessoa desenvolvedora .NET","5 meses", 0, 1);

INSERT INTO tb_curso (nome, duracao, preco, idCurso)
VALUE ("Aplicativos mobile","4 meses", 603.00, 5);

INSERT INTO tb_curso (nome, duracao, preco, idCurso)
VALUE ("Aprenda Unity Programando 7 Jogos","28h59m", 680.00, 5);

INSERT INTO tb_curso (nome, duracao, preco, idCurso)
VALUE ("Teoria da Música do Básico ao Avançado","12h", 179.00, 3);

INSERT INTO tb_curso (nome, duracao, preco, idCurso)
VALUE ("Jogos digitais", "1 ano e 6 meses", 1500.00, 5);
 
INSERT INTO tb_curso (nome, duracao, preco, idCurso)
VALUE ("Programação em Phyton","3 meses", 750.00, 2);

INSERT INTO tb_curso (nome, duracao, preco, idCurso)
VALUE ("Relachamento","1 meses", 0, 4);

SELECT * FROM tb_curso;

SELECT * FROM tb_curso WHERE preco>500.00;

SELECT * FROM tb_curso WHERE preco>500.00 and preco<1000.00;

SELECT * FROM tb_curso WHERE nome LIKE '%j%';

SELECT * FROM tb_curso INNER JOIN tb_categoria ON tb_curso.idCurso = tb_categoria.idCategoria AND tipo = "java";
