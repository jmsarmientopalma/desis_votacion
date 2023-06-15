CREATE PROCEDURE sp_saveVotoCanal(
	in idvotacion int,
	in idcanal int
)
BEGIN
	INSERT INTO votacion_canal
	(idvotacion, idcanal)
	VALUES(idvotacion, idcanal);

	select LAST_INSERT_ID() as resp; 

END