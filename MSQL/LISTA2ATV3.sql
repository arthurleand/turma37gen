CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;
CREATE TABLE tb_categoria(
id_categoria INT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
tarja_preta BOOLEAN,
PRIMARY KEY(id_categoria)
);

CREATE TABLE tb_produtos(
id_produto INT AUTO_INCREMENT,
nome VARCHAR(255),
valor FLOAT,
cor VARCHAR(255),
fk_categoria INT,
PRIMARY KEY(id_produto),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (tipo,tarja_preta) VALUES
("COSMETICO",false),
("ANTI-DEPRESSIVO",true),
("ANALGESICO",false);

INSERT INTO tb_produtos(nome,valor,cor,fk_categoria) VALUES
("Base",75.93,"ROSA",1),
("Paracetamol",35.64,"AZUl",3),
("Gloss",58.73,"TRANSPARENTE",1),
("SEJAFELIZ",22.50,"DIVERSAS",2),
("Omeprazol",44.67,"VERMELHO",3);

SELECT * FROM  tb_produtos WHERE valor > 50;
SELECT * FROM  tb_produtos WHERE valor > 2 AND valor < 61;

SELECT nome FROM tb_produtos WHERE nome LIKE '%B%';

SELECT tb_produtos.nome AS PRODUTO, tb_categoria.tipo AS TIPO , tb_produtos.valor AS "PREÇO" 
FROM tb_produtos
INNER JOIN tb_categoria ON tb_produtos.fk_categoria = tb_categoria.id_categoria;

SELECT tb_produtos.nome AS PRODUTO, tb_categoria.tipo AS TIPO , tb_produtos.valor AS "PREÇO" 
FROM tb_produtos
INNER JOIN tb_categoria ON tb_produtos.fk_categoria = tb_categoria.id_categoria
WHERE tb_categoria.tipo='COSMETICO';


