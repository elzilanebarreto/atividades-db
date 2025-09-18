/*1. Crie um banco de dados para um serviço de um Games Online. O nome do Banco
de dados deverá ter o seguinte nome db_generation_game_online. O sistema
trabalhará com as informações dos personagens do jogo. O sistema trabalhará com 2
tabelas tb_personagens e tb_classes, que deverão estar relacionadas. */

-- Criando o banco
CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

-- Criando tabelas 
CREATE TABLE tb_classes(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    tipo VARCHAR(255)
);

CREATE TABLE tb_personagens(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nivel INT NOT NULL,
    poder_ataque INT NOT NULL,
    vida INT NOT NULL,
    classe_id BIGINT,
    CONSTRAINT fk_personagens_classes 
    FOREIGN KEY tb_personagens(classe_id) REFERENCES tb_classes(id)
);

-- Inserindo resgistros: 5 nas classes e 8 nos personagens
INSERT INTO tb_classes (id, nome, tipo) 
VALUES (1, 'Guerreiro', 'Corpo a Corpo'),
	(2, 'Mago', 'Magia'),
	(3, 'Arqueiro', 'Distância'),
	(4, 'Assassino', 'Stealth'),
	(5, 'Paladino', 'Suporte');
    
INSERT INTO tb_personagens (id, nome, nivel, poder_ataque, vida, classe_id) 
VALUES (1, 'Thor', 50, 500, 3000, 1),
	(2, 'Merlin', 45, 2200, 2000, 2),
	(3, 'Legolas', 40, 1800, 1500, 4),
	(4, 'Ezio', 42, 2100, 1700, 5),
	(5, 'Uther', 48, 1900, 2800, 1),
	(6, 'Conan', 38, 2300, 2600, 3),
	(7, 'Gandalf', 50, 3000, 2200, 2),
	(8, 'Robin', 35, 700, 1600, 3);
    
-- Filtro com personagens com poder maior que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- Filtro com personagens com poder entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_ataque BETWEEN 1000 AND 2000;

-- Filtro com personagens com a letra C
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

-- Filtro com união das tabelas (com id da classe e outro sem)
SELECT tb_personagens.nome AS nome_personagem, nivel, poder_ataque, vida, tb_classes.nome AS nome_classe, tb_classes.tipo FROM 
tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id;

SELECT * FROM 
tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id;    

-- Filtro com personagens que pertencem apenas uma classe
SELECT tb_personagens.nome, nivel, poder_ataque, vida, tb_classes.nome AS nome_classe FROM
tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome = "Guerreiro";