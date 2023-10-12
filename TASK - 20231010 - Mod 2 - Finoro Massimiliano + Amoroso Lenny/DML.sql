-- POPOLAZIONE DELLE VARIE TABELLE USANDO IL DML (Data Manipulation Language) --


-- Inserimento dati nella tabella Amministratore
INSERT INTO Amministratore (nome, cognome, telefono, email) VALUES
('Mario', 'Rossi', '123-456-7890', 'mario@email.com'),
('Luca', 'Bianchi', '987-654-3210', 'luca@email.com'),
('Giulia', 'Verdi', NULL, 'giulia@email.com');

-- Inserimento dati nella tabella Stabile
INSERT INTO Stabile (indirizzo, nome, amministratore_RIF) VALUES
('Via Roma 123', 'Residenza Roma', 1),
('Via Milano 456', 'Condominio Milano', 2),
('Via Napoli 789', 'Palazzo Napoli', 3);

-- Inserimento dati nella tabella Appartamento
INSERT INTO Appartamento (nominativo, telefono, email, stabile_RIF) VALUES
('A101', '111-111-1111', 'a101@email.com', 1),
('B202', '222-222-2222', 'b202@email.com', 2),
('C303', '333-333-3333', 'c303@email.com', 3);

-- Inserimento dati nella tabella Inquilino
INSERT INTO Inquilino (nome, cognome, telefono, email, appartamento_RIF) VALUES
('Paolo', 'Verde', '444-444-4444', 'paolo@email.com', 1),
('Anna', 'Gialli', NULL, 'anna@email.com', 2),
('Marco', 'Blu', '666-666-6666', 'marco@email.com', 3);

-- Inserimento dati nella tabella Avviso
INSERT INTO Avviso (data_pubblicazione, titolo, descrizione, amministratore_RIF) VALUES
('2023-10-12 10:00:00', 'Manutenzione programmata', 'Sarà effettuata una manutenzione il prossimo weekend.', 1),
('2023-10-13 12:30:00', 'Chiusura temporanea ascensore', "L'ascensore sarà fuori servizio per riparazioni.", 2),
('2023-10-14 15:45:00', 'Riunione condominiale', 'Si terrà una riunione il prossimo mese. Partecipate numerosi!', 3);

-- Inserimento dati nella tabella Intervento
INSERT INTO Intervento (data_creazione, descrizione, stato, appartamento_richiedente, inquilino_RIF) VALUES
('2023-10-15 09:00:00', "Perdita d'acqua"amministratore, 'In lavorazione', 1, 1),
('2023-10-16 14:20:00', 'Guasto elettrico', 'Creato', 2, 2),
('2023-10-17 16:30:00', 'Riparazione finestra', 'Risolto', 3, 3);

-- Inserimento dati nella tabella Avviso_Inquilino_ref
INSERT INTO Avviso_Inquilino_ref (avviso_RIF, inquilino_RIF) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Inserimento dati nella tabella Amministratore_Intervento_ref
INSERT INTO Amministratore_Intervento_ref (amministratore_RIF, intervento_RIF) VALUES
(1, 1),
(2, 2),
(3, 3);
