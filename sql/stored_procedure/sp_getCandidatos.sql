CREATE PROCEDURE desis_vote.sp_getCandidatos()
BEGIN
	select 
		c.id,
		trim(c.nombre) as nombre
	from candidato c
	where c.estado = 1
	order by c.nombre
	;
END