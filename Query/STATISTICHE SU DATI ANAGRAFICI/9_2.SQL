--TOP N dipendenti da pi� anni in servizio raggruppato per dipartimento
SELECT CODICE_FISCALE,NOME,COGNOME,DIPARTIMENTO,DATEDIFF('YY',DATA_ASSUNZIONE,TODAY) AS ANNI_DI_SERVIZIO FROM(
SELECT * FROM ANAGRAFICA WHERE DATA_DIMISSIONE = '00/00/0000' AND DIPARTIMENTO = 'Produzione' ORDER BY DATA_ASSUNZIONE -- MODIFICA FILIALE PER FILTRARE SULLA FILIALE
LIMIT 10
)

