CREATE PROCEDURE sp_getCanales()
BEGIN
	select
		c.id,
		trim(c.nombre) as canal
	from canal c
	where c.estado = 1
	;
END