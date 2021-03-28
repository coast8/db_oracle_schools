




-- Inserir coluna na tabela
-- DDL - Data Definition Language
ALTER TABLE TCONTRATO ADD COL_TESTE VARCHAR(50);


-- Excluir coluna da tabela
-- DDL - Data Definition Language
ALTER TABLE TCONTRATO DROP COLUMN COL_TESTE;

--Alterar nome de coluna
ALTER TABLE TALUNO RENAME COLUMN NOME TO NOME2;
ALTER TABLE TALUNO RENAME COLUMN NOME2 TO NOME;
