


  --Select de duas tabelas (a mesma tabela)
  -- auto relacionamento
  SELECT Curso.Nome AS Curso,
         Pre_Req.Nome AS Pre_Requisito
  FROM TCURSO CURSO, TCURSO PRE_REQ
  WHERE CURSO.PRE_REQ = PRE_REQ.COD_CURSO(+)