CREATE TABLE votacion (
	id INT auto_increment NOT NULL,
	nombre VARCHAR(40) NOT NULL,
	alias varchar(20) NOT NULL,
	rut varchar(10) NOT NULL,
	email varchar(60) NOT NULL,
	idcomuna INT DEFAULT 0 NOT NULL,
	idcandidato INT DEFAULT 0 NOT NULL,
	estado TINYINT(1) DEFAULT 1 NOT NULL,
	CONSTRAINT votacion_PK PRIMARY KEY (id),
	CONSTRAINT votacion_FK FOREIGN KEY (idcomuna) REFERENCES comuna(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;
CREATE INDEX votacion_email_IDX USING BTREE ON votacion (email,estado);
CREATE INDEX votacion_idcandidato_IDX USING BTREE ON votacion (idcandidato,estado);
CREATE INDEX votacion_rut_IDX USING BTREE ON votacion (rut,estado);

ALTER TABLE votacion ADD CONSTRAINT votacion_FK_1 FOREIGN KEY (idcandidato) REFERENCES candidato(id) ON DELETE RESTRICT ON UPDATE RESTRICT;
