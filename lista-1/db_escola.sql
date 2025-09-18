-- Criando o banco da escola
CREATE DATABASE db_escola;

-- Identificando o banco
USE db_escola;

-- Criando a tabela de estudantes
CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    turma VARCHAR(10),
    nota DECIMAL(3,2) NOT NULL
);

-- Inserindo valores
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) 
VALUES ('Pedro Alvares', '2010-05-15', '6A', 8.5);

INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) 
VALUES ('Maria da Silva', '2011-09-22', '5B', 9.2);

INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) 
VALUES ('João dos Santos', '2009-03-10', '7A', 7.8);

INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) 
VALUES ('Ana Clara', '2012-11-30', '4C', 6.0);

INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) 
VALUES ('Lucas Rodrigues', '2010-07-07', '6A', 9.5);

INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) 
VALUES ('Carolina Sousa', '2011-02-18', '5B', 8.9);

INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) 
VALUES ('Gabriel Ferreira', '2008-08-05', '8A', 5.5);

INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) 
VALUES ('Júlia Lima', '2012-04-20', '4C', 7.1);

-- Listar estudantes com a nota maior do que 7.0
SELECT * FROM tb_estudantes WHERE nota > 7;

-- Listar estudantes com a nota menor do que 7.0
SELECT * FROM tb_estudantes WHERE nota < 7;

-- Atualizando um registro 
UPDATE tb_estudantes SET nota = 5.75 WHERE id = 3;