CREATE PROCEDURE desis_vote.sp_getComunas(
	in id_region int
)
BEGIN
	select 
		c.id,
		trim(c.nombre) as nombre
	from comuna c
	where c.estado = 1
	and c.idregion = id_region
	order by c.idregion asc, c.nombre asc
	;
END