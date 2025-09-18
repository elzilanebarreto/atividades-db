-- Criando o banco da empresa
CREATE DATABASE db_empresa;

-- Identificando o banco
USE db_empresa;

-- Criando tabela de colaboradores
CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    datacontratacao DATE,
    salario DECIMAL(10,2) NOT NULL
);

-- Inserindo os dados
INSERT INTO tb_colaboradores (nome, cpf, datacontratacao, salario) 
VALUES ('Ricardo Campos', '12312312345', '2024-08-15', 2500.00);

INSERT INTO tb_colaboradores (nome, cpf, datacontratacao, salario) 
VALUES ('Maria da Conceição', '99988877765', '2014-11-20', 5500.55);

INSERT INTO tb_colaboradores (nome, cpf, datacontratacao, salario)
VALUES ('Pedro Rocha', '55566677788', '2024-02-10', 1900.50);

INSERT INTO tb_colaboradores (nome, cpf, datacontratacao, salario)
VALUES ('Ana Oliveira', '11122233344', '2021-08-01', 6200.75);

INSERT INTO tb_colaboradores (nome, cpf, datacontratacao, salario)
VALUES ('Marcos', '44455566678', '2010-08-01', 1500.75);

-- Listar os colaboradores com salário maior do que 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- Listar os colaboradores com salário menor do que 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- Atualizando um registro da tabela através de uma query de atualização
UPDATE tb_colaboradores SET nome = 'Marcos Lima' WHERE nome = 'Marcos';