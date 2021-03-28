



###########################
#  Arredondando Valores   #
###########################


-- Round e Trunc
SELECT Round(45.925, 2 ),  --45.93   arredonda p cima
       Trunc(45.929, 2 ),  --45.92   arredonda p baixo
       Mod(10, 2) AS RESTO_DIVISAO,
       Trunc(1.99),
       Trunc(1.99, 2)
FROM DUAL;






--L -> R$
--G -> ponto
--D -> casas decimais

SELECT * FROM TALUNO

SELECT Trim(To_Char(Salario,'L99999.99')) salario1, trim(To_Char(Salario,'L99G999D99')) salario2
FROM TALUNO;

--
SELECT 'R$ '||(Round(Salario,2)) AS salario FROM TALUNO;