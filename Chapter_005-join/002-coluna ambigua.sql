


-- ambas as tabelas possuem
-- coluna chave primaria com o nome COD_ALUNO

  -- Errado - Coluna ambigua
  SELECT COD_ALUNO, TALUNO.NOME, TCONTRATO.TOTAL
  FROM TALUNO, TCONTRATO
  WHERE TALUNO.COD_ALUNO = TALUNO.COD_ALUNO
  --Correto, quando uma coluna existe com mesmo nome em mais de uma tabela,
  --colocar prefixo na coluna
