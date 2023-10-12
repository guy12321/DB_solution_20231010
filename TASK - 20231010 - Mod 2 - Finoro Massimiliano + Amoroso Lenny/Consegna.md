# Task di progettazione DB - 20231010 - MOD 2

### Sistema di gestione stabili

Creare un sistema di gestione stabili in grado di gestire e servire le richieste di Inquilini ed Amministratori.

Lo studio di amministratori ha in gestione "n" stabili, ogni stabile è caratterizzato da:

- Indirizzo
- Nome Stabile
- Codice univoco

Ogni stabile è composto da più inquilini.

Ogni appartamento è caratterizzato da:

- Identificativo appartamento
- Nominativo
- Telefono
- Email

Un amministratore può creare un numero indefinito di avvisi sullo stabile. Ogni avviso sarà visualizzabile dagli inquilini nella propria bacheca.

Un avviso è caratterizzato da:

- Data dell'avviso
- Titolo
- Descrizione dell'avviso

Ogni inquilino, utilizzando le credenziali generate dell'amministratore, accedendo alla propria bacheca, oltre a visualizzare gli avvisi creati dall'amministratore, avrà la possibilità di creare una richiesta di intervento.

Ogni richiesta di intervento è caratterizzata da:

- Data della richiesta
- Descrizione della richiesta
- Codice univoco (assegnato automaticamente)
- Stato (Creato/In lavorazione/Risolto/Respinto)
- Appartamento che ha effettuato la richiesta

## COME CONSEGNARE:

Inviare una mail al docente con il diagramma ER in Draw.io oppure come immagine oppure aggiungerlo come collaboratore su GitHub.

Includere nella cartella:

- Diagramma ER
- Codice sorgente SQL con almeno 2 record per ogni tabella

A consegna effettuata, accettata e corretta dal docente, verrà riconosciuto allo studente +1 punto per l'esame.