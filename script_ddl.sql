-- Script     : Stella Henrique_2020000834
-- DDL: Definição de dados

-- Criar  Usuário
CREATE USER stellaa PASSWORD 'stella' SUPERUSER
INHERIT CREATEDB CREATEROLE;

-- Criar esquema (Schemas) 
CREATE SCHEMA IF NOT EXISTS bancousers; 
COMMENT ON SCHEMA bancousers IS 'Criação do Esquema chamado bancousers.';

-- Atribuir todos as permissões de acesso ao esquema banco para o usuários: postgres e benevaldo
GRANT ALL ON SCHEMA bancousers TO postgres, stella;

-- Criar tabela: tabela usuario
CREATE SEQUENCE "bancousers".usuario_seq_id;
COMMENT ON SEQUENCE "bancousers".usuario_seq_id 
IS 'Usada para gerar a chave primárias id da tabela usuario automatiamente.';

-- *****************************************
-- Tabela usuario
-- *****************************************

CREATE TABLE "bancouser".usuario
(
	id integer DEFAULT nextval('"bancousers".usuarios_seq_id') NOT NULL,
	nome varchar(50) NOT NULL,
	login - caracter (30) NOT NULL,
	password  - caracter (30) NOT NULL,
	CONSTRAINT pk_id primary key(id)
);

COMMENT ON TABLE "bancouser".usuario IS 'Representa a entidade usuario.';

COMMENT ON COLUMN "bancouser".usuario.id IS 'Chave primária.';
COMMENT ON COLUMN "bancouser".usuarios.nome IS 'Nome do usuario.';
COMMENT ON TABLE "bancouser".usuario.login IS 'O login para acesso.';
COMMENT ON TABLE "bancouser".usuario.password IS 'A senha para acesso.';
-- Criar indice para tabela usuarios
CREATE INDEX usuarios_index_nome ON "bancouser".usuarios (nome);
COMMENT ON INDEX "bancouser".usuario_index_nome IS 'A entidade usuarios é ordenada pelo campo nome';
