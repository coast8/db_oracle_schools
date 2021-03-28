


  --Uniao da tabela de aluno com contrato
  SELECT ALU.COD_ALUNO, ALU.NOME AS ALUNO,
         CON.COD_CONTRATO,CON.DATA, CON.TOTAL
  FROM TALUNO ALU, TCONTRATO CON
  WHERE CON.COD_ALUNO = ALU.COD_ALUNO    --Criterio Uniao
  AND Upper(ALU.NOME) LIKE '%'           --Filtro
  ORDER BY ALU.NOME                      --Ordenar por nome