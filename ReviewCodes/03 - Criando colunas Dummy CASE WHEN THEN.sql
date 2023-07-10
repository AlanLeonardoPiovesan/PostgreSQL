/* VARIAVEIS DUMMY PARA MACHINE LEARNING */
SELECT CARGO
FROM FUNCIONARIOS;

SELECT NOME, CARGO,
CASE
	WHEN CARGO = 'Financial Advisor' THEN 'CONDICAO 01'
	WHEN CARGO = 'Structural Engineer' THEN 'CONDICAO 02'
	WHEN CARGO = 'Recruiting Manager' THEN 'CONDICAO 03'
	WHEN CARGO = 'Executive Secretary' THEN 'CONDICAO 04'
	WHEN CARGO = 'Sales Associative' THEN 'CONDICAO 05'
	ELSE 'OUTRAS CONDICOES'	
END AS "CONDICOES"
FROM FUNCIONARIOS;

SELECT NOME,
CASE
	WHEN SEXO = 'Masculino' THEN 'M'
	ELSE 'F'
END AS "SEXO"
FROM FUNCIONARIOS;

/* UTILIZANDO VALORES BOOLEANOS */
SELECT NOME, CARGO, (SEXO = 'Masculino') as Masculino, (SEXO = 'Feminino') as Feminino
FROM FUNCIONARIOS;

/* MESCLANDO AS TÉCNICAS */
SELECT NOME, CARGO,
CASE
	WHEN (SEXO = 'Masculino') = true THEN 1
	ELSE 0
END AS "MASCULINO",
CASE
	WHEN (SEXO = 'Feminino') = true THEN 1
	ELSE 0
END AS "FEMININO"
FROM FUNCIONARIOS;