📂 Banco de Dados – Projetos SQL

Este repositório contém três bancos de dados de exemplo desenvolvidos em MySQL, cada um representando um contexto diferente:

  🛒 E-commerce (db_ecommerce.sql)
  
  🏢 Empresa (db_empresa.sql)
  
  🏫 Escola (db_escola.sql)

O objetivo é praticar modelagem de dados, manipulação e consultas de banco de dados relacionais.


---

## 🚀 Ferramenta Utilizada

Todas as atividades foram realizadas utilizando o [MySQL Workbench](https://www.mysql.com/products/workbench/), uma ferramenta visual que facilita a criação, administração e consulta de bancos de dados MySQL.

---

## 📦 Estrutura dos Bancos

### 🛒 `db_ecommerce`
Banco de dados para gerenciamento de produtos de um e-commerce.  

**Tabela:** `tb_produtos`  
- `id` (PK, BIGINT, auto incremento)  
- `nome` (VARCHAR, obrigatório)  
- `quantidade` (INT)  
- `descricao` (VARCHAR)  
- `valor` (DECIMAL, obrigatório)  

**Exemplo de Query:**  
```sql
-- Produtos acima de R$500
SELECT * FROM tb_produtos WHERE valor > 500;
```

---

### 🏢 `db_empresa`
Banco de dados para controle de colaboradores.  

**Tabela:** `tb_colaboradores`  
- `id` (PK, BIGINT, auto incremento)  
- `nome` (VARCHAR, obrigatório)  
- `cpf` (VARCHAR, único, obrigatório)  
- `datacontratacao` (DATE)  
- `salario` (DECIMAL, obrigatório)  

**Exemplo de Query:**  
```sql
-- Colaboradores com salário menor que R$2000
SELECT * FROM tb_colaboradores WHERE salario < 2000;
```

---

### 🏫 `db_escola`
Banco de dados para registro de estudantes.  

**Tabela:** `tb_estudantes`  
- `id` (PK, BIGINT, auto incremento)  
- `nome` (VARCHAR, obrigatório)  
- `data_nascimento` (DATE)  
- `turma` (VARCHAR)  
- `nota` (DECIMAL, obrigatório)  

**Exemplo de Query:**  
```sql
-- Estudantes com nota maior que 7
SELECT * FROM tb_estudantes WHERE nota > 7;
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
- Boas práticas de modelagem  

---

## 📝 Licença
Este projeto é apenas para fins **educacionais**.  
