CREATE TABLE candidato (
	id INT auto_increment NOT NULL,
	nombre varchar(50) NOT NULL,
	estado TINYINT(1) DEFAULT 1 NOT NULL,
	CONSTRAINT candidato_PK PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

--  Auto-generated SQL script #202306141203
INSERT INTO candidato (nombre)
	VALUES ('Albert Einstein');
INSERT INTO candidato (nombre)
	VALUES ('Isaac Newton');
INSERT INTO candidato (nombre)
	VALUES ('Nicolás Copérnico');
INSERT INTO candidato (nombre)
	VALUES ('Nathan Rosen');
INSERT INTO candidato (nombre)
	VALUES ('Marie Curie');
INSERT INTO candidato (nombre)
	VALUES ('Ada Lovelace');
INSERT INTO candidato (nombre)
	VALUES ('Lise Meitner');
INSERT INTO candidato (nombre)
	VALUES ('Charles Babbage');
INSERT INTO candidato (nombre)
	VALUES ('Alan Turing');
