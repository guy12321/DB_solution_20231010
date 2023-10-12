-- CREAZIONE DEL DATABASE USANDO IL DDL (Data Definition Language) --


-- Creazione e selezione del database
CREATE DATABASE Gestione_Stabili_Finoro;
USE Gestione_Stabili_Finoro;


-- Creazione della tabella Amministratore
CREATE TABLE Amministratore(
	ID_amministratore INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    cognome VARCHAR(255) NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(255),
    PRIMARY KEY(ID_amministratore)
);

-- Creazione della tabella Stabile
CREATE TABLE Stabile(
	ID_stabile INT AUTO_INCREMENT NOT NULL,
    indirizzo VARCHAR(255) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    amministratore_RIF INT NOT NULL,
    PRIMARY KEY (ID_stabile),
    FOREIGN KEY (amministratore_RIF) REFERENCES Amministratore(ID_amministratore)
);

-- Creazione della tabella Appartamento
CREATE TABLE Appartamento(
	ID_appartamento INT AUTO_INCREMENT NOT NULL,
    nominativo VARCHAR(255) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    email VARCHAR(255) NOT NULL,
    stabile_RIF INT NOT NULL,
    PRIMARY KEY (ID_appartamento),
    FOREIGN KEY (stabile_RIF) REFERENCES Stabile(ID_stabile)
);

-- Creazione della tabella Inquilino
CREATE TABLE Inquilino(
	ID_inquilino INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    cognome VARCHAR(255) NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(255),
    appartamento_RIF INT NOT NULL,
    PRIMARY KEY(ID_inquilino),
    FOREIGN KEY (appartamento_RIF) REFERENCES Appartamento(ID_appartamento)
);

-- Creazione della tabella Avviso
CREATE TABLE Avviso(
	ID_avviso INT AUTO_INCREMENT NOT NULL,
    data_pubblicazione DATETIME NOT NULL,
    titolo VARCHAR(255) NOT NULL,
    descrizione VARCHAR(1024) NOT NULL,
    amministratore_RIF INT NOT NULL,
    PRIMARY KEY (ID_avviso),
    FOREIGN KEY (amministratore_RIF) REFERENCES Amministratore(ID_amministratore)
);

-- Creazione della tabella Intervento
CREATE TABLE Intervento(
	ID_intervento INT AUTO_INCREMENT NOT NULL,
    data_creazione DATETIME NOT NULL,
    descrizione VARCHAR(1024) NOT NULL,
    stato ENUM("Creato", "In lavorazione", "Risolto", "Respinto") NOT NULL,
    appartamento_richiedente INT NOT NULL,
    inquilino_RIF INT NOT NULL,
    PRIMARY KEY (ID_intervento),
    FOREIGN KEY (inquilino_RIF) REFERENCES Inquilino(ID_inquilino)
);

-- Creazione della tabella per il riferimento tra Avviso e Inquilino
CREATE TABLE Avviso_Inquilino_ref(
	avviso_RIF INT NOT NULL,
    inquilino_RIF INT NOT NULL,
    FOREIGN KEY (avviso_RIF) REFERENCES Avviso(ID_avviso),
    FOREIGN KEY (inquilino_RIF) REFERENCES Inquilino(ID_inquilino)
);

-- Creazione della tabella per il riferimento tra Amministratore e Intervento
CREATE TABLE Amministratore_Intervento_ref(
	amministratore_RIF INT NOT NULL,
    intervento_RIF INT NOT NULL,
    FOREIGN KEY (amministratore_RIF) REFERENCES Amministratore(ID_amministratore),
    FOREIGN KEY (intervento_RIF) REFERENCES Intervento(ID_intervento)
);
