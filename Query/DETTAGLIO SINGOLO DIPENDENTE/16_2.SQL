--Stipendio medio mensile, calcolato su media di ogni anno solare 

SELECT ANNO ,ROUND(AVG(STIPENDIO_MEDIO_MENSILE),2) AS STIPENDIO_MEDIO_ANNO_SOLARE
FROM (SELECT MESE,ANNO,AVG(STIPENDIO) AS STIPENDIO_MEDIO_MENSILE
       FROM CEDOLINI
       GROUP BY ANNO,MESE)
GROUP BY ANNO