# 📂 Banco de Dados 

Este repositório contém diversos bancos de dados de exemplo desenvolvidos em MySQL, cada um representando um contexto diferente:

- 🛒 [E-commerce](./lista-1/db_ecommerce.sql)  
- 🏢 [Empresa](./lista-1/db_empresa.sql)  
- 🏫 [Escola](./lista-1/db_escola.sql)  
- 🎓 [Cursos Online](./lista-2/db_curso_da_minha_vida.sql)  
- 🎮 [Game Online](./lista-2/db_generation_game_online.sql)  

O objetivo é praticar **modelagem de dados**, **manipulação** e **consultas SQL**, incluindo o uso de **INNER JOIN** para relacionar tabelas.

---

## 🚀 Ferramenta Utilizada
Todas as atividades foram realizadas utilizando o [MySQL Workbench](https://www.mysql.com/products/workbench/), uma ferramenta visual que facilita a criação, administração e consulta de bancos de dados MySQL.

---

## 📦 Estrutura das Pastas

### 📁 lista-1
Exercícios iniciais com foco em consultas simples (`WHERE`, `>`, `<`, `UPDATE`).  

- 🛒 `db_ecommerce` → gerenciamento de produtos  
- 🏢 `db_empresa` → controle de colaboradores  
- 🏫 `db_escola` → registro de estudantes  

### 📁 lista-2
Exercícios com foco em **relacionamentos e INNER JOIN**.  

- 🎓 `db_curso_da_minha_vida` → cursos online e categorias  
- 🎮 `db_generation_game_online` → personagens e classes de jogo  

---

## 📑 Exemplos de Consultas

### 🛒 `db_ecommerce`
```sql
-- Produtos acima de R$500
SELECT * FROM tb_produtos WHERE valor > 500;
```

### 🏢 `db_empresa`
```sql
-- Colaboradores com salário menor que R$2000
SELECT * FROM tb_colaboradores WHERE salario < 2000;
```

### 🏫 `db_escola`
```sql
-- Estudantes com nota maior que 7
SELECT * FROM tb_estudantes WHERE nota > 7;
```

### 🎓 `db_curso_da_minha_vida`
```sql
-- Listar cursos junto com suas categorias
SELECT nome, carga_horaria, nivel, valor, tb_categorias.tipo, tb_categorias.descricao
FROM tb_cursos 
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id;
```

### 🎮 `db_generation_game_online`
```sql
-- Listar personagens com suas classes
SELECT tb_personagens.nome AS nome_personagem, nivel, poder_ataque, vida, 
       tb_classes.nome AS nome_classe, tb_classes.tipo
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;
```

---

## ⚙️ Como Executar
1. Clone este repositório:
   ```bash
   git clone https://github.com/seu-usuario/repositorio.git
   cd repositorio
   ```
2. Acesse o MySQL e abra os arquivos específicos.  
3. Explore as tabelas com consultas SQL!  

---

## 📚 Aprendizados
- Criação de bancos de dados e tabelas  
- Inserção e atualização de registros  
- Consultas condicionais (`WHERE`, `>`, `<`)  
- Relacionamentos com **INNER JOIN**  
- Boas práticas de modelagem  

---

## 📝 Licença
Este projeto é apenas para fins **educacionais**.  