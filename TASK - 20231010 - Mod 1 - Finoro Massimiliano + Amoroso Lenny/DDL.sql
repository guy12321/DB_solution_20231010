-- CREAZIONE DEL DATABASE USANDO IL DDL (Data Definition Language) --


-- Creazione e selezione del database
CREATE DATABASE Palestra_Finoro_Amoroso;
USE Palestra_Finoro_Amoroso;


-- Creazione della tabella Palestra
CREATE TABLE Palestra(
	indirizzo VARCHAR(255),
	PRIMARY KEY(indirizzo)
);

-- Creazione della tabella Attrezzo
CREATE TABLE Attrezzo(
	ID_attrezatura INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	descrizione VARCHAR(255) NOT NULL,
	palestra_RIF VARCHAR(255),
	PRIMARY KEY(ID_attrezatura),
	FOREIGN KEY(palestra_RIF) REFERENCES Palestra(indirizzo)
);

-- Creazione della tabella Allenatore
CREATE TABLE Allenatore(
	ID_allenatore INT NOT NULL AUTO_INCREMENT,
	nome varchar(255) NOT NULL,
	cognome varchar(255) NOT NULL,
	specializzazione VARCHAR(255) NOT NULL,
	palestra_RIF VARCHAR(255),
	PRIMARY KEY(ID_allenatore),
	FOREIGN KEY(palestra_RIF) REFERENCES Palestra(indirizzo)
);

-- Creazione della tabella ClasseFitness
CREATE TABLE ClasseFitness(
	nome VARCHAR(255) NOT NULL,
	descrizione VARCHAR(255) NOT NULL,
	max_partecipanti INT NOT NULL,
	allenatore_RIF INT NOT NULL,
	PRIMARY KEY(nome),
	FOREIGN KEY(allenatore_RIF) REFERENCES Allenatore(ID_allenatore)
);

-- Creazione della tabella Socio
CREATE TABLE Socio(
	ID_socio INT NOT NULL,
	nome  VARCHAR(255) NOT NULL,
	cognome VARCHAR(255) NOT NULL,
	data_iscrizione_ts BIGINT UNSIGNED,
	PRIMARY KEY(ID_socio)
);

-- Creazione della tabella per il riferimento tra Socio e ClasseFitness
CREATE TABLE Socio_ClasseFitness_ref(
	classefitness_RIF VARCHAR(255) NOT NULL,
	socio_RIF INT NOT NULL,
	FOREIGN KEY(classefitness_RIF) REFERENCES ClasseFitness(nome),
	FOREIGN KEY(socio_RIF) REFERENCES Socio(ID_socio)
);

-- Creazione della tabella per il riferimento tra Palestra e Socio
CREATE TABLE Palestra_Socio_ref(
	socio_RIF INT NOT NULL,
	palestra_RIF VARCHAR(255) NOT NULL,
	FOREIGN KEY(socio_RIF) REFERENCES Socio(ID_socio),
	FOREIGN KEY(palestra_RIF) REFERENCES Palestra(indirizzo)
);