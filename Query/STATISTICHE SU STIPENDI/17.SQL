--Totale degli stipendi mensili per ogni mese e anno
select anno,mese,sum(stipendi) as totale_stipendi from (
select codice_fiscale, sum(stipendio) as stipendi,anno,mese from cedolini group by codice_fiscale,anno,mese
)
group by anno,mese