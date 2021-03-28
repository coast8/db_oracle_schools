
-- 
--

SELECT To_Char(Trunc(SYSDATE),'DD/MM/YYYY') AS DATA FROM DUAL


-- TOTAL DE CONTRATO POR DATA
-- Trunc para remover a data
-- nao é possivel fazer a agregacao com (data e hora), 
-- devemos fazer somente c a data, por isso truncamos a Trunc
SELECT To_Char(Trunc(DATA),'DD/MM/YYYY') AS DATA,
       Sum(TOTAL) AS SOMA,
       Avg(TOTAL) AS MEDIA,
       Count(*)   AS QTDE
FROM TCONTRATO
GROUP BY Trunc(DATA)
ORDER BY DATA DESC
