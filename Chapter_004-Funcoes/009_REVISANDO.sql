


--
SELECT * FROM TALUNO
WHERE Lower(NOME) = 'marcio';

SELECT * FROM TALUNO
WHERE Upper(NOME) = 'MARCIO';

SELECT * FROM TALUNO
WHERE Upper(SubStr(CIDADE,1,3)) = 'CAN';



UPDATE TALUNO SET
SALARIO = 633.47
WHERE COD_ALUNO = 1;


SELECT
  SALARIO,
  REPLACE(SALARIO, ',' , ''),
  RPad(SALARIO, 10,'0'),     --Zeros a direita até 10 casas
  LPad(SALARIO, 10,'0'),     --Zeros a esquerda até 10 casas
  LPad(REPLACE(SALARIO,',',''),10,'0')
FROM TALUNO;