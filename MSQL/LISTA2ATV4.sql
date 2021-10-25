CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;
CREATE TABLE tb_categoria(
id_categoria INT AUTO_INCREMENT,
tipo VARCHAR(255),
ativo BOOLEAN,
PRIMARY KEY(id_categoria)
);

CREATE TABLE tb_produtos(
id_produto INT AUTO_INCREMENT,
nome VARCHAR(255),
valor FLOAT,
congelado BOOLEAN,
fk_categoria INT,
PRIMARY KEY(id_produto),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (tipo,ativo) VALUES
("LEGUME",true),
("FRUTA",true),
("ESPECIAL",false);

INSERT INTO tb_produtos(nome,valor,congelado,fk_categoria) VALUES
("BANANA",2.99,false,2),
("AMORA",25.99,true,2),
("BATATA",12.99,false,1),
("MACAXEIRA DESCASCADA",75.43,true,1),
("TOMATE",33.32,false,2);

SELECT * FROM  tb_produtos WHERE valor > 50;
SELECT * FROM  tb_produtos WHERE valor > 2 AND valor < 61;

SELECT nome FROM tb_produtos WHERE nome LIKE '%c%';

SELECT tb_produtos.nome AS PRODUTO, tb_categoria.tipo AS TIPO , tb_produtos.valor AS "PREÇO" 
FROM tb_produtos
INNER JOIN tb_categoria ON tb_produtos.fk_categoria = tb_categoria.id_categoria;

SELECT tb_produtos.nome AS PRODUTO, tb_categoria.tipo AS TIPO , tb_produtos.valor AS "PREÇO" 
FROM tb_produtos
INNER JOIN tb_categoria ON tb_produtos.fk_categoria = tb_categoria.id_categoria
WHERE tb_categoria.tipo='FRUTA';