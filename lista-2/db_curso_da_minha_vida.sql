/*6. Crie um banco de dados para uma plataforma de Cursos Online (EAD). O nome do
Banco de dados deverá ter o seguinte nome db_curso_da_minha_vida. O sistema
trabalhará com as informações dos produtos comercializados pela empresa. O sistema
trabalhará com 2 tabelas tb_cursos e tb_categorias, que deverão estar relacionadas.*/

-- Criando o banco
CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

-- Criando tabelas 
CREATE TABLE tb_categorias(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(100),
    descricao VARCHAR(255)
);

CREATE TABLE tb_cursos(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    carga_horaria INT NOT NULL,
    nivel VARCHAR(100) NOT NULL,
    valor DECIMAL(6,2) NOT NULL,
    categoria_id BIGINT,
    CONSTRAINT fk_cursos_categorias 
    FOREIGN KEY tb_cursos(categoria_id) REFERENCES tb_categorias(id)
);

-- Inserindo resgistros: 5 nas categorias e 8 nos cursos
INSERT INTO tb_categorias (tipo, descricao) 
VALUES ("Desenvolvimento", "Cursos sobre programação e criação de software."),
("Marketing Digital", "Cursos focados em estratégias de marketing na internet."),
("Design Gráfico", "Cursos para criação de identidade visual e peças de design."),
("Idiomas", "Cursos para aprendizado de novas línguas."),
("Finanças", "Cursos sobre gestão financeira pessoal e empresarial.");
    
INSERT INTO tb_cursos (nome, carga_horaria, nivel, valor, categoria_id) VALUES
('Curso Completo de Python', 120, 'Intermediário', 450.00, 1),
('Fundamentos do Marketing Digital', 80, 'Básico', 250.00, 2),
('UX Design para Iniciantes', 60, 'Básico', 380.00, 3),
('Inglês Avançado para Carreira', 150, 'Avançado', 890.00, 4),
('Desenvolvimento Web Full Stack', 250, 'Especialista', 1800.00, 1),
('Copywriting e Vendas', 50, 'Intermediário', 520.00, 2),
('Pacote Adobe Completo', 180, 'Especialista', 2100.00, 3),
('Gestão Financeira para Startups', 90, 'Intermediário', 750.00, 5);
    
-- Filtro com cursos com valor maior que 500
SELECT * FROM tb_cursos WHERE valor > 500;

-- Filtro com valor entre 600 e 1000
SELECT * FROM tb_cursos WHERE valor BETWEEN 600 AND 1000;

-- Filtro com cursos com a letra J
SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

-- Filtro com união das tabelas (com id da categoria e outro sem)
SELECT * FROM 
tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.categoria_id = tb_categorias.id;  

SELECT nome, carga_horaria, nivel, valor, tb_categorias.tipo, tb_categorias.descricao FROM 
tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.categoria_id = tb_categorias.id;    

-- Filtro com cursos que pertencem apenas uma categoria
SELECT nome, carga_horaria, nivel, valor, tb_categorias.tipo, tb_categorias.descricao FROM 
tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = 'Desenvolvimento';