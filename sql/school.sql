CREATE DATABASE IF NOT EXISTS school;
CREATE TABLE IF NOT EXISTS aluno (
  matricula SERIAL PRIMARY KEY,
  cpf INTEGER UNIQUE NOT NULL,
  nome TEXT NOT NULL,
  responsavel TEXT
);
CREATE TABLE IF NOT EXISTS professores(
  id SERIAL PRIMARY KEY,
  cpf INTEGER UNIQUE NOT NULL,
  nome TEXT NOT NULL,
  materia TEXT
);
CREATE TABLE IF NOT EXISTS aulas(
  id_professor INTEGER NOT NULL,
  matricula_aluno INTEGER,
  FOREIGN KEY (id_professor) REFERENCES professores(id),
  FOREIGN KEY (matricula_aluno) REFERENCES aluno(matricula)
);
-- Rename table aluno to alunos
ALTER TABLE aluno
  RENAME TO alunos;