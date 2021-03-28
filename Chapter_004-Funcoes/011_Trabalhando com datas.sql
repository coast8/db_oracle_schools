



###########################
#  trabalhando com Datas  #
###########################

SELECT * FROM TCONTRATO;

--SysDate retorna data/hora do Servidor.
SELECT SYSDATE FROM DUAL;

--Funcoes de Data/Hora
-- DATA + 5 => data mais 5 dias
SELECT DATA, SYSDATE, DATA + 5 FROM TCONTRATO;

SELECT SYSDATE - DATA AS DIF_DIAS FROM TCONTRATO;

-- Trunc em data ele desconsidera as horas, e trabalha apenas com a data
-- diferenca de dias
SELECT Trunc(SYSDATE - DATA) as DIAS FROM TCONTRATO;

-- Somando horas em uma data
-- vai executar primeiro a divisao(5 / 24), depois soma com a data
-- o dia possui 24h
SELECT SYSDATE, SYSDATE + 5 / 24 as ADD_HORAS FROM TCONTRATO;

--Somar minutos
-- o dia possue 1440 m
SELECT SYSDATE, SYSDATE + 15 / 1440 as ADD_MINUTOS FROM TCONTRATO;

-- somar segundos
-- somando 30 segundos
SELECT SYSDATE, SYSDATE + 30 / (3600 * 24) as ADD_SEGUNDOS FROM TCONTRATO;


--Hora fica 00:00:00
SELECT SYSDATE, Trunc(SYSDATE) FROM DUAL;

-- Diferenca de meses entre datas
-- primeiro passa a data maior
SELECT Months_Between(SYSDATE, SYSDATE-90) AS DIF_MES FROM DUAL;

-- Adiciona meses
-- adicionando 5 meses para data
SELECT Add_Months(SYSDATE, 5) AS ADICIONA_MES_DATA FROM DUAL;

-- Proxima data a partir de uma dia da semana
SELECT Next_Day(SYSDATE, 'QUARTA-FEIRA') AS PROXIMA_QUARTA_DATA FROM DUAL;

-- Ultimo dia do mes
SELECT Last_Day(SYSDATE) AS ULTIMO_DIA_MES FROM DUAL;



--Primeiro dia do proximo mes
--até dia 15 do mes pega o primeiro dia do mes atual
--a partir do dia 16 retorna o primeiro dia do proximo mes
SELECT Round(SYSDATE, 'MONTH') AS PRIMEIRO_DIA_PROXIMO_MES FROM DUAL;


--Primeiro dia do mes
SELECT Trunc(SYSDATE,'MONTH') AS PRIMEIRO_DIA_MES_CORRENTE FROM DUAL;


---Formatação de data

--Conversor to_char(data, formato)

-- To_Char -> para converter p string e extrair algum valor da data
-- DD -> dia do mes
SELECT SYSDATE, To_Char(SYSDATE,'DD') FROM DUAL

--
SELECT To_Char(SYSDATE,'DD/MM/YYYY') DATA FROM DUAL;

SELECT To_Char(SYSDATE,'DD/MM') DIA_MES FROM DUAL;

SELECT To_Char(SYSDATE,'DD') DIA FROM DUAL;

SELECT To_Char(SYSDATE,'MM') MES FROM DUAL;

SELECT To_Char(SYSDATE,'YYYY') ANO FROM DUAL;

SELECT To_Char(SYSDATE,'YY') ANO FROM DUAL;

-- escreve o nome do mes
SELECT To_Char(SYSDATE,'MONTH') MES1 FROM DUAL;

-- dia da semana ex 1 = domingo
SELECT To_Char(SYSDATE,'D') DIA_SEMANA FROM DUAL;

--
SELECT To_Char(SYSDATE,'DY') DIA_SEMANA FROM DUAL;   -- QUA

--
SELECT To_Char(SYSDATE,'DAY') DIA_SEMANA1 FROM DUAL; -- QUARTA

--
SELECT To_Char(SYSDATE,'YEAR') ANO FROM DUAL;        -- Em Ingles

--
SELECT To_Char(SYSDATE,'"NOVO HAMBURGO", fmDAY "," DD "de" fmMonth "de" YYYY') FROM DUAL;

-- padrao de horas 24 horas
SELECT To_Char(SYSDATE,'HH24:MI') HORA_MIN FROM DUAL;

--
SELECT To_Char(SYSDATE,'HH24:MI:SS') HORA_MIN_SEG FROM DUAL;

--
SELECT To_Char(SYSDATE,'DD/MM HH24:MI') DATA_HORA FROM DUAL;

--
SELECT To_Char(SYSDATE,'DD/MM/YYYY HH24:MI:SS') DATA_HORA FROM DUAL;


