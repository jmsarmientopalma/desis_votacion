-- region definition

CREATE TABLE `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `nombre_corto` varchar(30) NOT NULL,
  `codigo` varchar(4) DEFAULT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idregion`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO region (nombre,nombre_corto,codigo,estado) VALUES
	 ('Tarapacá','Tarapacá','I',1),
	 ('Antofagasta','Antofagasta','II',1),
	 ('Atacama','Atacama','III',1),
	 ('Coquimbo','Coquimbo','IV',1),
	 ('Valparaíso','Valparaíso','V',1),
	 ('Libertador General Bernardo O''Higgins','O''Higgins','VI',1),
	 ('Maule','Maule','VII',1),
	 ('Bío-Bío','Bío-Bío','VIII',1),
	 ('La Araucanía','La Araucanía','IX',1),
	 ('Los Lagos','Los Lagos','X',1);
INSERT INTO region (nombre,nombre_corto,codigo,estado) VALUES
	 ('Aysén del General Carlos Ibáñez del Campo','Aysén','XI',1),
	 ('Magallanes y la Antártica Chilena','Magallanes','XII',1),
	 ('Metropolitana','Metropolitana','XIII',1),
	 ('Los Ríos','Los Ríos','XIV',1),
	 ('Arica y Parinacota','Arica y Parinacota','XV',1);
