-- INTERROGAZIONE DEL DATABASE USANDO IL DQL (Data Query Language) --

-- Dobbiamo tracciare quali attrezzature sono utilizzate in quali classi
SELECT attrezzo.nome, classefitness.nome
FROM attrezzo
INNER JOIN palestra ON palestra.indirizzo = attrezzo.palestra_RIF
    INNER JOIN allenatore ON allenatore.palestra_RIF = palestra.indirizzo
        INNER JOIN classefitness ON classefitness.allenatore_RIF = allenatore.ID_allenatore;
