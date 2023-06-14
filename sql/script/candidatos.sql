CREATE TABLE desis_vote.candidatos (
	id INT auto_increment NOT NULL,
	nombre varchar(50) NOT NULL,
	estado TINYINT(1) DEFAULT 1 NOT NULL,
	CONSTRAINT candidatos_PK PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

--  Auto-generated SQL script #202306141203
INSERT INTO desis_vote.candidatos (nombre)
	VALUES ('Albert Einstein');
INSERT INTO desis_vote.candidatos (nombre)
	VALUES ('Isaac Newton');
INSERT INTO desis_vote.candidatos (nombre)
	VALUES ('Nicolás Copérnico');
INSERT INTO desis_vote.candidatos (nombre)
	VALUES ('Nathan Rosen');
INSERT INTO desis_vote.candidatos (nombre)
	VALUES ('Marie Curie');
INSERT INTO desis_vote.candidatos (nombre)
	VALUES ('Ada Lovelace');
INSERT INTO desis_vote.candidatos (nombre)
	VALUES ('Lise Meitner');
INSERT INTO desis_vote.candidatos (nombre)
	VALUES ('Charles Babbage');
INSERT INTO desis_vote.candidatos (nombre)
	VALUES ('Alan Turing');
