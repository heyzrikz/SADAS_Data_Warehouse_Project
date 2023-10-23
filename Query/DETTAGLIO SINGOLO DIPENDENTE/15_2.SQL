--Stipendio medio orario, calcolato su ultimo anno solare ricerca per singolo dipendente


SELECT CODICE_FISCALE, ROUND((AVG(STIPENDIO)/176),2) AS STIPENDIO_MEDIO_ORARIO, ANNO
FROM CEDOLINI
WHERE ANNO=DATEPART('YY',TODAY)
AND CODICE_FISCALE = '0' --sostituisci 0 con codice fiscale da cercare
GROUP BY CODICE_FISCALE,ANNO