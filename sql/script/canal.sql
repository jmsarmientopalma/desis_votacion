CREATE TABLE canal (
	id INT auto_increment NOT NULL,
	nombre varchar(20) NOT NULL,
	estado TINYINT(1) DEFAULT 1 NOT NULL,
	CONSTRAINT canal_PK PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;


--  Auto-generated SQL script #202306141858
INSERT INTO canal (nombre)
	VALUES ('Web');
INSERT INTO canal (nombre)
	VALUES ('TV');
INSERT INTO canal (nombre)
	VALUES ('Redes Sociales');
INSERT INTO canal (nombre)
	VALUES ('Amigo');
