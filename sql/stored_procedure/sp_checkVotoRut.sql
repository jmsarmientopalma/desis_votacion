CREATE PROCEDURE sp_checkVotoRut(
	in prmRut varchar(10)
)
BEGIN
	select 
		count(*) as emitido
	from votacion v
	where trim(v.rut) = prmRut
	and v.estado = 1
	;
END