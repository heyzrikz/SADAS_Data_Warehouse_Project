--Top N dipendenti con lo stipendio attuale più alto raggruppati per dipartimento
select CODICE_FISCALE,STIPENDIO,DIPARTIMENTO FROM(
select CODICE_FISCALE,MAX(MESE) AS MESE,DIPARTIMENTO,STIPENDIO from cedolini_filiale_dipartimento where anno=2023 AND dipartimento='Vendita' group by CODICE_FISCALE,DIPARTIMENTO,STIPENDIO --SOSTITUISCI 2023 CON L'ANNO DA ANALIZZARE E DIPARTIMENTO
) ORDER BY STIPENDIO DESC
LIMIT 10