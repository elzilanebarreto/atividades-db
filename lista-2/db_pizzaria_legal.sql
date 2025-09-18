/*2. Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de
dados deverá ter o seguinte nome db_pizzaria_legal. O sistema trabalhará com as
informações dos produtos comercializados pela empresa. O sistema trabalhará com 2
tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas.
*/

-- Criando o banco
CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- Criando tabelas 
CREATE TABLE tb_categorias(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_pizzas(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome_pizza VARCHAR(255) NOT NULL,
    valor DECIMAL(8, 2) NOT NULL,
    tamanho VARCHAR(255) NOT NULL,
    massa VARCHAR(255),
    categoria_id BIGINT,
    CONSTRAINT fk_pizzas_categorias 
    FOREIGN KEY tb_pizzas(categoria_id) REFERENCES tb_categorias(id)
);

-- Inserindo resgistros: 5 nas categorias e 8 pizza
INSERT INTO tb_categorias (tipo, descricao) 
VALUES('Salgadas', 'Pizzas com ingredientes salgados, como queijos, carnes e embutidos.'),
('Doces', 'Pizzas com recheios doces, como chocolate e frutas.'),
('Vegetarianas', 'Pizzas sem carne, com vegetais, legumes e queijos.'),
('Especiais', 'Combinações exclusivas da casa com ingredientes selecionados.'),
('Veganas', 'Pizzas sem nenhum ingrediente de origem animal.');
    
INSERT INTO tb_pizzas (nome_pizza, valor, tamanho, massa, categoria_id)
VALUES ('Mussarela', 39.00, 'Pequene', 'Tradicional', 1),
('Calabresa com Cheddar', 55.00, 'Grande', 'Grossa', 1),
('Banana com Canela', 60.00, 'Média', 'Fina', 2),
('Chocolate com Morango', 75.00, 'Grande', 'Doce', 2),
('Rúcula com Tomate Seco', 58.00, 'Grande', 'Tradicional', 3),
('Da Horta', 62.00, 'Média', 'Integral', 3),
('Camarão com Catupiry', 90.00, 'Grande', 'Grossa', 4),
('Cogumelos', 110.00, 'Média', 'Fina', 5);
    
-- Filtro com valor maior que 45
SELECT * FROM tb_pizzas WHERE valor > 45;

-- Filtro com valor entre 50 e 100
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

-- Filtro com cursos com a letra M
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%M%";

-- Filtro com união das tabelas (com id da categoria e outro sem)
SELECT * FROM 
tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id;  

SELECT nome_pizza, valor, tamanho, massa, tb_categorias.tipo, tb_categorias.descricao FROM 
tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id;    

-- Filtro com cursos que pertencem apenas uma categoria
SELECT nome_pizza, valor, tamanho, massa, tb_categorias.tipo, tb_categorias.descricao FROM 
tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = 'Doces';