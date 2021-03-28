



-- copia parte de um texto
-- substr ( campo/texto, posicao, qtde de caract )
SELECT nome, SubStr(NOME,1,3) FROM TALUNO;

--
SELECT SubStr(NOME,1,1) FROM TALUNO;

--
SELECT nome, SubStr(NOME,3,1) FROM TALUNO;





SELECT SubStr(NOME,Length(nome),1) FROM TALUNO;

--
SELECT SubStr(NOME,Length(nome)-1, 2) FROM TALUNO;

--
SELECT nome, SubStr(NOME, 3, Length(nome)-3 ) FROM TALUNO;