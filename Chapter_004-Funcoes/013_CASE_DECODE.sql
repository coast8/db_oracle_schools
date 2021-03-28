



-- Case
-- Decode



-- alimentando banco
SELECT * FROM TALUNO

UPDATE TALUNO SET
NOME = NULL
WHERE COD_ALUNO = 5;

SELECT Cod_Aluno, Nvl(Nome, 'SEM NOME') FROM TALUNO

SELECT * FROM TALUNO;

UPDATE TAluno SET
Estado = 'SC'
WHERE Cod_Aluno=3;

UPDATE TAluno SET
Estado = 'RJ'
WHERE Cod_Aluno=5;
-- fim alimentando banco




--Case
SELECT NOME, Estado,
       CASE
         WHEN Estado = 'RS' THEN 'GAUCHO'
         WHEN Estado = 'AC' THEN 'ACREANO'
         WHEN Estado = 'RJ' AND SALARIO > 500 THEN 'CARIOCA'
         ELSE 'OUTROS'
       END AS Apelido
FROM TALUNO;

--
SELECT SYSDATE AS DATA FROM DUAL

--
SELECT NOME, ESTADO,
       Decode(ESTADO,'RS','GAUCHO',
                     'AC','ACREANO',
                     'SP','PAULISTA',
                          'OUTROS' ) AS APELIDO
FROM TALUNO;