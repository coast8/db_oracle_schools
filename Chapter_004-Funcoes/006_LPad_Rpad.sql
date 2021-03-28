

-- left - esquerda
SELECT cod_aluno, LPad(COD_ALUNO,5,'0') FROM TALUNO;

-- direita
SELECT nome, salario, RPad(SALARIO,8,'0') FROM TALUNO;


SELECT nome, RPad(NOME,10,'$') FROM TALUNO;