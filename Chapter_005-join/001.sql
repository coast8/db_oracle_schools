



  SELECT * FROM TALUNO;

  SELECT * FROM TCONTRATO;

  -- Produto Cartesiano -> ERRADO
  SELECT TALUNO.COD_ALUNO, TALUNO.NOME, TCONTRATO.TOTAL
  FROM TALUNO , TCONTRATO

  -- Correto
  SELECT TALUNO.COD_ALUNO, TALUNO.NOME, TCONTRATO.TOTAL
  FROM TALUNO, TCONTRATO
  WHERE TALUNO.COD_ALUNO = TCONTRATO.COD_ALUNO

  UPDATE TALUNO SET
  NOME = 'MARCOS'
  WHERE COD_ALUNO = 5