--TOP N dipendenti da pi� anni in servizio raggruppato per filiale
SELECT CODICE_FISCALE,NOME,COGNOME,FILIALE,DATEDIFF('YY',DATA_ASSUNZIONE,TODAY) AS ANNI_DI_SERVIZIO FROM(
SELECT * FROM ANAGRAFICA WHERE DATA_DIMISSIONE = '00/00/0000' AND FILIALE = '1' ORDER BY DATA_ASSUNZIONE -- MODIFICA FILIALE PER FILTRARE SULLA FILIALE
LIMIT 10
)

