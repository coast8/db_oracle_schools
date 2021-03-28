



-----
--NVL e NVL2
SELECT * FROM tcontrato;

SELECT Total,
       Desconto,
       Desconto+Total,
       Nvl(Desconto,0),
       Nvl(Desconto,0) + TOTAL,
       Nvl2(DESCONTO, TOTAL, 0)
FROM TContrato;