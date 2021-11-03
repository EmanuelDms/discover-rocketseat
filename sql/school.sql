CREATE DATABASE IF NOT EXISTS school;
CREATE TABLE IF NOT EXISTS aluno (
  matricula SERIAL PRIMARY KEY,
  cpf INTEGER UNIQUE NOT NULL,
  nome TEXT NOT NULL,
  responsavel TEXT
);
CREATE TABLE IF NOT EXISTS professor(
  id SERIAL PRIMARY KEY,
  cpf INTEGER UNIQUE NOT NULL,
  nome TEXT NOT NULL,
  materia TEXT
);
CREATE TABLE IF NOT EXISTS aula(
  id_professor INTEGER NOT NULL,
  matricula_aluno INTEGER,
  FOREIGN KEY (id_professor) REFERENCES professor(id),
  FOREIGN KEY (matricula_aluno) REFERENCES aluno(matricula)
);
-- Rename table aluno to alunos
ALTER TABLE aluno
  RENAME TO alunos;
-- Rename table aula to aulas
ALTER TABLE aula
  RENAME TO aulas;
-- Rename table professor to professores
ALTER TABLE professor
  RENAME TO professores;
-- Rename COLUMN
-- ALTER TABLE aulas RENAME COLUMN id_aluno TO matricula_aluno;
-- Apagar tabelas
-- DROP TABLE alunos