CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR (20),
    sobrenome VARCHAR (255),
    idade INT,
    cargo VARCHAR(255),
    salario DOUBLE 
);
SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores (nome, sobrenome, idade, cargo, salario)
VALUES ("Varus", "Flechada", 25, "Supervisor", 2500);

INSERT INTO tb_colaboradores (nome, sobrenome, idade, cargo, salario)
VALUES ("Ashe", "Fronzen", 45, "CEO", 15000);

INSERT INTO tb_colaboradores (nome, sobrenome, idade, cargo, salario)
VALUES ("Draven", "Lamina", 20, "Jovem aprendiz", 700);

INSERT INTO tb_colaboradores (nome, sobrenome, idade, cargo, salario)
VALUES ("Veigar", "Roxopolis", 27, "Técnico de TI", 1900);

INSERT INTO tb_colaboradores (nome, sobrenome, idade, cargo, salario)
VALUES ("Soraka", "Meia Lua", 20, "Jovem aprendiz", 700);

SELECT * FROM tb_colaboradores WHERE salario>2000;
SELECT * FROM tb_colaboradores WHERE salario<2000;

UPDATE tb_colaboradores SET cargo = "Auxiliar de TI" where id = 5;
UPDATE tb_colaboradores SET salario = 1450 WHERE id = 5;