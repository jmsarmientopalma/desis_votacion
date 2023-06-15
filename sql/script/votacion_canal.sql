CREATE TABLE desis_vote.votacion_canal (
	id INT auto_increment NOT NULL,
	idvotacion INT DEFAULT 0 NOT NULL,
	idcanal INT DEFAULT 0 NOT NULL,
	estado TINYINT(1) DEFAULT 1 NOT NULL,
	CONSTRAINT votacion_canal_PK PRIMARY KEY (id),
	CONSTRAINT votacion_canal_FK FOREIGN KEY (idvotacion) REFERENCES desis_vote.votacion(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
	CONSTRAINT votacion_canal_FK_1 FOREIGN KEY (idcanal) REFERENCES desis_vote.canal(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;
CREATE INDEX votacion_canal_idvotacion_IDX USING BTREE ON desis_vote.votacion_canal (idvotacion,estado);
