--Stipendio medio mensile, calcolato su media ultimo anno solare  

SELECT CODICE_FISCALE,ANNO,AVG(STIPENDIO_MEDIO_MENSILE) AS STIPENDIO_MEDIO_ANNO_SOLARE
FROM (
       SELECT CODICE_FISCALE,MESE,ANNO,AVG(STIPENDIO) AS STIPENDIO_MEDIO_MENSILE
       FROM CEDOLINI
       WHERE ANNO = DATEPART('YY',TODAY)
       GROUP BY CODICE_FISCALE,ANNO,MESE
      )
WHERE CODICE_FISCALE = '0' --sostituisci 0 con codice fiscale da cercare
GROUP BY CODICE_FISCALE,ANNO

--Presa la media di ogni mese, calcoliamo la media annuale