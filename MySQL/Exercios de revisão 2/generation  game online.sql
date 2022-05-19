CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
idClasse BIGINT AUTO_INCREMENT PRIMARY KEY,
classe VARCHAR(255),
arma VARCHAR(255)
);

INSERT INTO tb_classes (classe, arma)
VALUES ("Bárbaro(o)","Machado");

INSERT INTO tb_classes (classe, arma)
VALUES ("Feiticeiro(a)","Cajado");

INSERT INTO tb_classes (classe, arma)
VALUES ("Guerreiro(a)","Espada");

INSERT INTO tb_classes (classe, arma)
VALUES ("Ladino(a)","adaga");

INSERT INTO tb_classes (classe, arma)
VALUES ("Patrulheiro(a)","Arco e flecha");

INSERT INTO tb_classes (classe, arma)
VALUES ("bardo(a)","bandolim");

INSERT INTO tb_classes (classe, arma)
VALUES ("Patrulheiro(a)","Arco e flecha");

INSERT INTO tb_classes (classe, arma)
VALUES ("Patrulheiro(a)","Arco e flecha");

INSERT INTO tb_classes (classe, arma)
VALUES ("Guerreiro(a)","Espada");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagem (
idPer BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
raca VARCHAR(255),
ataque INT,
defesa INT,

FOREIGN KEY (idPer) REFERENCES tb_classes (idClasse)
); 

INSERT INTO tb_personagem (nome, raca, ataque, defesa)
VALUE ("Artemis", "Dragonato(a)", 2500, 4500);

INSERT INTO tb_personagem (nome, raca, ataque, defesa)
VALUE ("Nemeia", "Meio elfo(a)", 3500, 2500);

INSERT INTO tb_personagem (nome, raca, ataque, defesa)
VALUE ("Gael", "Humano(a)", 1500, 1500);

INSERT INTO tb_personagem (nome, raca, ataque, defesa)
VALUE ("Ront", "Meio-Orc", 2500, 4000);

INSERT INTO tb_personagem (nome, raca, ataque, defesa)
VALUE ("Eleonor", "Humano(a)", 1500, 1500);

INSERT INTO tb_personagem (nome, raca, ataque, defesa)
VALUE ("Arum", "gnomo(a)", 1200, 1000);

INSERT INTO tb_personagem (nome, raca, ataque, defesa)
VALUE ("Nebin", "Halfling", 1300, 2500);

INSERT INTO tb_personagem (nome, raca, ataque, defesa)
VALUE ("Donaarc", "Dragonato(a)", 2500, 4500);

SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem INNER JOIN tb_classes ON tb_personagem.idPer = tb_classes.idClasse;

SELECT * FROM tb_personagem WHERE ataque>2000;

SELECT * FROM tb_personagem WHERE defesa>1000 and defesa<2000;

SELECT * FROM tb_personagem WHERE nome LIKE '%c%';

SELECT * FROM tb_personagem INNER JOIN tb_classes ON tb_personagem.idPer = tb_classes.idClasse AND classe = "Patrulheiro(a)";
