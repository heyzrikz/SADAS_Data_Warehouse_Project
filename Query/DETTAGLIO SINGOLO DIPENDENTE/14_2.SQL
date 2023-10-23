--Stipendio ultimo mese su TODAY


SELECT CODICE_FISCALE, STIPENDIO, MESE, ANNO
FROM CEDOLINI
WHERE ANNO=DATEPART('YY',TODAY)
      AND MESE=DATEPART('MM',TODAY)
      AND CODICE_FISCALE = '0' --sostituisci 0 con il codice_fiscale da cercare

--Il result sarà null poichè nell'anno 2023 al mese di luglio non esistono cedolini