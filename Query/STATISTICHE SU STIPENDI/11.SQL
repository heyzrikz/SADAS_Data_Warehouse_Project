-- Stipendio medio mensile raggruppato per livello

SELECT DISTINCT LIVELLO,AVG(STIPENDIO) AS STIPENDIO_MEDIO FROM CEDOLINI GROUP BY LIVELLO