


---
-- Round => arredondando para duas casas decimais
SELECT NOME AS CURSO,
       VALOR,
       VALOR/CARGA_HORARIA,
       Round(VALOR/CARGA_HORARIA,2) AS VALOR_HORA
FROM TCURSO
ORDER BY VALOR_HORA;
--Apelido de coluna só funciona em ORDER BY