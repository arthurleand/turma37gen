CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;
CREATE TABLE tb_categoria(
id_categoria INT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
fit BOOLEAN,
PRIMARY KEY(id_categoria)
);

CREATE TABLE tb_pizza(
id_pizza INT AUTO_INCREMENT,
nome VARCHAR(255),
valor FLOAT NOT NULL,
pimenta BOOLEAN,
fk_categoria INT,
PRIMARY KEY(id_pizza),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria(tipo,fit) VALUES
("DOCE", false),
("Salgada",false),
("Fit", true);

INSERT INTO  tb_pizza(nome,valor,pimenta,fk_categoria) VALUES 
("Calabresa",35.90,false,2),
("Brigadeiro",32.48,false,1),
("Jalapeño",44.45,true,2),
("Espinafre",65.90,false,3),
("Beijinho",39.00,false,1);

SELECT * FROM  tb_pizza WHERE valor > 45;
SELECT * FROM  tb_pizza WHERE valor >28  AND valor < 61;

SELECT nome FROM tb_pizza WHERE nome LIKE '%c%';

SELECT tb_pizza.nome AS PIZZA, tb_categoria.tipo AS TIPO , tb_pizza.valor AS "PREÇO" 
FROM tb_pizza
INNER JOIN tb_categoria ON tb_pizza.fk_categoria = tb_categoria.id_categoria;

SELECT tb_pizza.nome AS PIZZA, tb_categoria.tipo AS TIPO , tb_pizza.valor AS "PREÇO" 
FROM tb_pizza
INNER JOIN tb_categoria ON tb_pizza.fk_categoria = tb_categoria.id_categoria
WHERE tb_categoria.tipo = 'DOCE';
