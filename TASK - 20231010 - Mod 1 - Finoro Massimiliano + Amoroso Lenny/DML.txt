-- POPOLAZIONE DELLE VARIE TABELLE USANDO IL DML (Data Manipulation Language) --


-- Inserimento dati nella tabella Palestra
INSERT INTO Palestra (indirizzo) VALUES
    ('Via Palestra 123'),
    ('Via Fitness 456'),
    ('Via Sportiva 789');

-- Inserimento dati nella tabella Attrezzo
INSERT INTO Attrezzo (nome, descrizione, palestra_RIF) VALUES
    ('Tapis Roulant', 'Attrezzo cardio', 'Via Palestra 123'),
    ('Manubri', 'Pesistica leggera', 'Via Fitness 456'),
    ('Ellittica', 'Attrezzo cardio', 'Via Sportiva 789');

-- Inserimento dati nella tabella Allenatore
INSERT INTO Allenatore (nome, cognome, specializzazione, palestra_RIF) VALUES
    ('Mario', 'Rossi', 'Fitness', 'Via Palestra 123'),
    ('Laura', 'Bianchi', 'Pesistica', 'Via Fitness 456'),
    ('Giovanni', 'Verdi', 'Yoga', 'Via Sportiva 789');

-- Inserimento dati nella tabella ClasseFitness
INSERT INTO ClasseFitness (nome, descrizione, max_partecipanti, allenatore_RIF) VALUES
    ('CardioFit', 'Allenamento cardiovascolare', 20, 1),
    ('PesisticaPower', 'Allenamento con pesi', 15, 2),
    ('YogaZen', 'Sessioni di yoga rilassante', 25, 3);

-- Inserimento dati nella tabella Socio
INSERT INTO Socio (ID_socio, nome, cognome, data_iscrizione_ts) VALUES
    (1, 'Carlo', 'Bianchi', UNIX_TIMESTAMP('2023-01-01')),
    (2, 'Anna', 'Verdi', UNIX_TIMESTAMP('2023-02-15')),
    (3, 'Luca', 'Rossi', UNIX_TIMESTAMP('2023-03-20'));

-- Inserimento dati nella tabella Socio_ClasseFitness_ref
INSERT INTO Socio_ClasseFitness_ref (classefitness_RIF, socio_RIF) VALUES
    ('CardioFit', 1),
    ('PesisticaPower', 2),
    ('YogaZen', 3);

-- Inserimento dati nella tabella Palestra_Socio_ref
INSERT INTO Palestra_Socio_ref (socio_RIF, palestra_RIF) VALUES
    (1, 'Via Palestra 123'),
    (2, 'Via Fitness 456'),
    (3, 'Via Sportiva 789');
