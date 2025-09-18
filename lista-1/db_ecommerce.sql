-- Criando um banco para um e-commerce
CREATE DATABASE db_ecommerce;

-- Identificando o banco
USE db_ecommerce;

-- Criando tabela produtos
CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    quantidade int,
    descricao VARCHAR(255),
    valor DECIMAL(6,2) NOT NULL
);

-- Inserindo os dados
INSERT INTO tb_produtos (nome, quantidade, descricao, valor) 
VALUES ('Notebook Gamer', 4, 'Notebook de alto desempenho para jogos', 7654.75);

INSERT INTO tb_produtos (nome, quantidade, descricao, valor) 
VALUES('Crônicas de Narnia', 25, 'Livro de fantasia e aventura', 125.50);

INSERT INTO tb_produtos (nome, quantidade, descricao, valor)
VALUES('Abajur', 10, 'Luminária de mesa com design moderno e luz suave', 25.99);

INSERT INTO tb_produtos (nome, quantidade, descricao, valor) 
VALUES('Cadeira Gamer', 8, 'Apoio de braços 4D', 1500.00);

INSERT INTO tb_produtos (nome, quantidade, descricao, valor) 
VALUES('Garrafa Termica', 26, 'Garrafa de aço inoxidável', 150.45);

INSERT INTO tb_produtos (nome, quantidade, descricao, valor) 
VALUES('Mouse Sem Fio', 60, 'Design ergonômico', 500.90);

INSERT INTO tb_produtos (nome, quantidade, descricao, valor) 
VALUES('Teclado Mecânico', 30, 'Iluminação personalizável', 650.00);

INSERT INTO tb_produtos (nome, quantidade, descricao, valor) 
VALUES('Monitor Ultrawide 34 polegadas', 7, 'Painel curvo, resolução 2K', 2800.00);

-- Listar os produtos com o valor maior do que 500
SELECT * FROM tb_produtos WHERE valor > 500;

-- Listar os produtos com o valor menor do que 500
SELECT * FROM tb_produtos WHERE valor < 500;

-- Atualizando um registro
UPDATE tb_produtos SET descricao = 'Cadeira ergonômica com apoio de braços' WHERE nome = 'Cadeira Gamer';