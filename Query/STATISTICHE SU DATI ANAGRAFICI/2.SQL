--Numero di dipendenti raggruppati per sede

SELECT DISTINCT FILIALE,COUNT(*) AS numero_dipendenti
FROM ANAGRAFICA_FILIALE  --aggiungere _(1..4) se si vuole controllare il numero di dipendenti di una specifica filiale
GROUP BY FILIALE