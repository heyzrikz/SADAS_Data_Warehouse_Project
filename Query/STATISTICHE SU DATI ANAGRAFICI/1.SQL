SELECT
	 COUNT(DISTINCT  CODICE_FISCALE)
FROM
	 ( SELECT
	*
FROM
	 ANAGRAFICA 
WHERE
	(data_dimissione <= '01/01/2007' AND data_dimissione >= '01/01/1998')
OR (data_dimissione= '00/00/0000' AND data_assunzione <= '01/01/2007')
ORDER BY CODICE_FISCALE)