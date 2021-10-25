CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;
CREATE TABLE tb_classe(
id_classe INT AUTO_INCREMENT,
forca FLOAT NOT NULL,
defesa FLOAT NOT NULL,
tipo VARCHAR(255),
PRIMARY KEY(id_classe)
);

CREATE TABLE tb_personagem(
id_personagem INT AUTO_INCREMENT,
nome VARCHAR(255),
fk_classe INT,
ativo BOOLEAN,
nivel int,
PRIMARY KEY(id_personagem),
FOREIGN KEY (fk_classe) REFERENCES tb_classe(id_classe)
);

INSERT INTO tb_classe(forca,tipo,defesa) VALUES
(1200.3,"Arqueiro",1710.02),
(2200.4,"Mago",1342.3),
(3502.2, "Guerreiro",2530.32);

INSERT INTO tb_personagem(nome,fk_classe,ativo,nivel) VALUES
("KidzinApelao",2,true,22),
("ZeDasArmas",1,true,13),
("BicoDeFerro",2,true,57),
("BlastGhost",1,false,200),
("ArianaBig",3,true,38);

SELECT tb_personagem.nome, tb_classe.tipo, tb_classe.forca 
FROM tb_personagem
INNER JOIN tb_classe ON tb_personagem.fk_classe = tb_classe.id_classe
WHERE tb_classe.forca>2000;

SELECT tb_personagem.nome, tb_classe.tipo, tb_classe.defesa
FROM tb_personagem
INNER JOIN tb_classe ON tb_personagem.fk_classe = tb_classe.id_classe
WHERE tb_classe.defesa>999 AND tb_classe.defesa<2001;

SELECT nome FROM tb_personagem WHERE nome LIKE '%c%';

SELECT tb_personagem.nome, tb_classe.tipo
FROM tb_personagem
INNER JOIN tb_classe ON tb_personagem.fk_classe = tb_classe.id_classe
WHERE tb_classe.tipo="Arqueiro";

