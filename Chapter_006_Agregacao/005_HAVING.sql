

--
SELECT Trunc(DATA), SUM(TOTAL) TOTAL
FROM   TCONTRATO
WHERE  COD_CONTRATO > 0
GROUP  BY Trunc(DATA)
HAVING SUM(TOTAL) > 500
ORDER  BY TOTAL Desc;