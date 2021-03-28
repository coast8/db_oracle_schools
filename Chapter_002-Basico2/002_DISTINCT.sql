


--Distinct retira linhas duplicadas
-- todas colunas tem que ser iguais
SELECT CIDADE FROM TALUNO;


SELECT DISTINCT CIDADE FROM TALUNO;


--Nao agrupa pois cod_aluno diferente
--para cada linha
SELECT DISTINCT CIDADE, COD_ALUNO
FROM TALUNO
ORDER BY CIDADE;