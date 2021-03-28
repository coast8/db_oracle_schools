


SELECT Count(*)   AS QTDE_REGISTROS,
       Avg(TOTAL) AS MEDIA,
       Round(Avg(TOTAL),2) AS MEDIA,
       Max(TOTAL) AS MAXIMO,
       Min(TOTAL) AS MINIMO,
       Sum(TOTAL) AS SOMA,
       Max(DATA)  AS DATA_MAIOR,
       Min(DATA)  AS DATA_MENOR
FROM TCONTRATO;

--Proximo código sequencial tabela
SELECT Max(COD_CONTRATO) + 1 AS PROXIMO_CODIGO
FROM TCONTRATO;

--
SELECT * FROM TALUNO;
SELECT * FROM TCONTRATO;

--TOTAL DE CONTRATOS POR ALUNO
-- GROUP BY deve chamar a coluna que n é funcao de agregacao
SELECT COD_ALUNO,
       COUNT(*) AS QTDE_CONTRATO,
       Sum(TOTAL) AS VALOR_TOTAL
FROM TCONTRATO
GROUP BY COD_ALUNO