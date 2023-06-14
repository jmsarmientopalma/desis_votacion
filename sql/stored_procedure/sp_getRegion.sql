CREATE PROCEDURE desis_vote.sp_getRegion()
BEGIN
	select 
		r.id,
		trim(r.nombre) as nombre,
		trim(r.nombre_corto) as nombre_corto,
		trim(r.codigo) as codigo
	from region r
	where r.estado = 1
	order by r.id asc
	;
END