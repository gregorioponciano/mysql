# 🗄️ Estudos de MySQL

Este repositório contém meus exercícios, scripts e anotações sobre **Banco de Dados Relacional** utilizando **MySQL**. O objetivo é documentar meu progresso desde a criação de tabelas (DDL) até consultas complexas (DML) e junções (Joins).

## 🚀 Tecnologias Utilizadas
- **MySQL Server** (Versão 8.0+)
- **MySQL Workbench** (Interface Gráfica)
- **DBeaver** (Opcional)

---

## 📌 Conteúdo do Repositório

### 1. Definição de Dados (DDL)
Scripts para criação e modificação da estrutura do banco:
- `CREATE DATABASE`: Criação do esquema.
- `CREATE TABLE`: Definição de colunas, tipos de dados e chaves (PK, FK).
- `ALTER TABLE`: Modificações em tabelas existentes.

### 2. Manipulação de Dados (DML)
Comandos para gerenciar os registros:
- `INSERT INTO`: Inserção de dados.
- `UPDATE`: Atualização de informações.
- `DELETE`: Remoção de registros.

### 3. Consultas e Filtros (DQL)
A parte principal dos estudos, focada em extração de inteligência:
- `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`.
- Funções de Agregação: `COUNT`, `SUM`, `AVG`, `GROUP BY`, `HAVING`.
- **Joins**: Relacionamento entre tabelas (`INNER`, `LEFT`, `RIGHT`).

---

## 🛠️ Exemplo Prático de Query

Abaixo, um exemplo de como estruturo meus scripts de consulta:

```sql
-- Selecionar todos os clientes que fizeram compras acima de R$ 100,00
SELECT 
    c.nome AS Cliente, 
    p.data_pedido, 
    p.valor_total
FROM clientes c
INNER JOIN pedidos p ON c.id = p.cliente_id
WHERE p.valor_total > 100
ORDER BY p.valor_total DESC;
