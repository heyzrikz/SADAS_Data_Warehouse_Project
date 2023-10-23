-- Dipendenti assunti nell'ultimo e penultimo anno corrente

SELECT DISTINCT DATEPART('YY',DATA_ASSUNZIONE) AS ANNO_ASSUNZIONE, COUNT(*) AS NUMERO_ASSUNZIONI
FROM ANAGRAFICA
WHERE ANNO_ASSUNZIONE = DATEPART('YY',TODAY)-1 OR ANNO_ASSUNZIONE = DATEPART('YY',TODAY)
GROUP BY ANNO_ASSUNZIONE

--Se non vengono visualizzati degli anni è perchè non sono stati assunti dipendenti