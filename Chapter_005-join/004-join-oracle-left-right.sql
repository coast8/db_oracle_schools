


  ------------------------------------------

  SELECT * FROM TALUNO
  SELECT * FROM TCONTRATO
  SELECT * FROM TITEM
  SELECT * FROM TCURSO

  SELECT ALU.COD_ALUNO, ALU.NOME AS ALUNO,
         CON.COD_CONTRATO, CON.DATA, CON.TOTAL,
         ITE.COD_CURSO, CUR.NOME AS CURSO,
         ITE.VALOR
  FROM TALUNO ALU, TCONTRATO CON,
       TITEM ITE, TCURSO CUR
  WHERE ALU.COD_ALUNO = CON.COD_ALUNO(+)  --Criterio Uniao
  AND   CON.COD_CONTRATO = ITE.COD_CONTRATO(+)
  AND   ITE.COD_CURSO = CUR.COD_CURSO(+)
  ORDER BY CON.TOTAL DESC;

  INSERT INTO TALUNO VALUES (10, 'PEDRO', 'NOVO HAMBURGO', NULL)


----------------------------------------------------
