CREATE DATABASE db_escola;

USE db_escola;
CREATE TABLE tb_aluno (
id_aluno INT AUTO_INCREMENT,
nome VARCHAR(255),
cpf VARCHAR(255),
numero_pais VARCHAR(255),
nota DOUBLE NOT NULL,
PRIMARY KEY (id_aluno)
);

INSERT INTO tb_aluno (nome,cpf,numero_pais,nota) VALUES
("Arthur","111.111.111-11","986529861", 7.9),
("João","222.222.222-22","986529862", 6.5),
("Marcelo","333.333.333-33","986529863", 2.5),
("Pedro","444.444.444-44","986529864", 3.5),
("Henrique","555.555.555-55","986529865", 9.5),
("Julia","666.666.666-66","986529866", 8.0),
("Idacilda","777.777.777-77","986529867", 4.5),
("Maria","888.888.888-88","986529868", 3.5);

USE db_escola; 
SELECT * FROM tb_aluno WHERE nota>7.0;
SELECT * FROM tb_aluno WHERE nota<7.0;

USE db_escola;
UPDATE tb_aluno SET nota = 8.7 WHERE id_aluno= 4;
