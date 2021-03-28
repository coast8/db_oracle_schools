



--calculo com coluna = NULL
--resultado = NULL
SELECT COD_CONTRATO,
       TOTAL,
       DESCONTO,
       TOTAL+DESCONTO
FROM TCONTRATO;


-- Nvl => tratar o erro em uma coluna nula
SELECT COD_CONTRATO,
       DESCONTO,
       Nvl(DESCONTO,0),
       TOTAL,
       TOTAL + Nvl(DESCONTO,0) AS TOTAL_MAIS_DESCONTO
FROM TCONTRATO;