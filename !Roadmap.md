Tags: #db 
# SQL Roadmap

## 1. Fundamentos e Sintaxe Básica

- [x] CREATE TABLE (DDL)
- [x] ALTER TABLE
- [x] DROP TABLE
- [x] TRUNCATE TABLE

- [x] INSERT
- [x] UPDATE (+ importância do WHERE)
- [x] DELETE (+ importância do WHERE)

- [x] SELECT
- [x] FROM
- [x] WHERE
- [x] ORDER BY
- [ ] LIMIT / OFFSET

- [x] INNER JOIN
- [x] LEFT JOIN
- [x] RIGHT JOIN
- [x] FULL JOIN

---

## 2. Consultas Avançadas

- [x] GROUP BY
- [ ] HAVING
- [x] Funções de agregação (COUNT, SUM, AVG, MIN, MAX)

- [ ] Window Functions (OVER)
- [ ] ROW_NUMBER()
- [ ] RANK()
- [ ] DENSE_RANK()
- [ ] LEAD()
- [ ] LAG()

- [x] Subqueries
- [ ] CTE (WITH)
- [ ] CTE Recursiva (WITH RECURSIVE)

---

## 3. Modelagem e Relacionamentos

- [x] Primeira Forma Normal (1NF)
- [x] Segunda Forma Normal (2NF)
- [x] Terceira Forma Normal (3NF)

- [ ] Desnormalização (quando usar)

- [x] FOREIGN KEY
- [ ] ON DELETE CASCADE
- [ ] ON DELETE SET NULL
- [ ] ON DELETE RESTRICT / NO ACTION

---

## 4. Funcionamento Interno

- [x] B-Tree / B+Tree
- [ ] LSM-Tree

- [ ] ACID
- [ ] BASE

- [ ] Query Planner
- [ ] EXPLAIN ANALYZE
- [x] Seq Scan vs Index Scan

- [ ] MVCC
- [ ] Connection Pool

---

## 5. Índices

- [x] Índices B-Tree
- [ ] Índices Hash
- [X] GIN
- [ ] GiST

- [x] Índices Compostos
- [x] Índices Parciais
- [x] Covering Indexes

---

## 6. Transações e Concorrência

- [ ] Transações (BEGIN / COMMIT / ROLLBACK)

- [ ] Read Committed
- [ ] Repeatable Read
- [ ] Serializable

- [ ] Locks Implícitos
- [ ] SELECT ... FOR UPDATE
- [ ] SELECT ... FOR SHARE

- [ ] Concorrência Otimista
- [ ] Concorrência Pessimista
- [ ] Deadlocks

---

## 7. Migrations

- [x] Conceito de Migrations
- [x] Versionamento de Schema
- [x] Flyway
- [ ] Liquibase
- [ ] Prisma Migrate
- [ ] Golang Migrate

---

## 8. Infraestrutura

- [ ] Managed Databases (RDS, Cloud SQL, Supabase, Neon)
- [ ] Self-Hosted

- [ ] Replicação Primary/Replica
- [ ] PITR (Point-in-Time Recovery)
- [ ] WAL

---

## 9. Segurança

- [ ] RBAC (Roles e Permissões)

- [ ] Row-Level Security (RLS)

- [ ] TLS/SSL
- [ ] Criptografia em repouso

- [ ] Prepared Statements
- [ ] SQL Injection

---

## 10. Extras

- [x] Constraints (PRIMARY KEY, UNIQUE, CHECK, NOT NULL, DEFAULT)
- [x] Tipos de dados SQL
- [x] Views
- [x] Materialized Views
- [ ] Sequences / SERIAL / IDENTITY
- [ ] JSON e JSONB (PostgreSQL)
- [X] Full Text Search
- [x] Funções e Procedures
- [x] Triggers
- [ ] Particionamento de tabelas
- [x] Backup e Restore

---

## 11. Tópicos Avançados (Laguna)

- [ ] PgBouncer (Connection Pooling)
- [ ] Index Rules (Left-to-Right Rule para índices compostos)
- [ ] Concurrency Case Use
- [x] Uso de colunas `version`
- [x] Uso de `updated_at` para controle de concorrência
- [ ] Controle de concorrência otimista com `version`
- [ ] Estratégias para evitar atualizações perdidas (Lost Update)
- [ ] Como debugar problemas de Connection Pool em produção
- [ ] Limite de conexões do banco de dados
- [ ] Diagnóstico de conexões presas (stuck connections)
- [x] Boas práticas para otimização de índices compostos