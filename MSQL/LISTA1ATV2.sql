CREATE DATABASE db_ecommerce;

USE db_ecommerce;
CREATE TABLE tb_produtos(
	id_produto INT AUTO_INCREMENT,
    nome VARCHAR(255),
    tipo VARCHAR(255),
	cor VARCHAR(255),
    valor DOUBLE,
    PRIMARY KEY(id_produto)
);

use db_ecommerce;
INSERT INTO tb_produtos(nome,tipo,cor,valor) VALUES
("Marte","Camisa","Vermelho",199.99),
("Júpiter","Boné","Verde",59.99),
("Terra","Calça","Azul",299.99),
("Saturno","Tênis","Cinza",499.99),
("Plutão","Anel","Bege",799.99),
("Urano","Pulseira","Roxo",99.99),
("Netuno","Esmalte","Ciano",29.99),
("Sol","Base","Amarelo",79.99);

SELECT * FROM tb_produtos WHERE valor<500;
SELECT * FROM tb_produtos WHERE valor>500;

USE db_ecommerce;
UPDATE tb_produtos SET valor = 159.99 WHERE id_produto= 1;