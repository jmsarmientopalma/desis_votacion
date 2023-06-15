CREATE PROCEDURE sp_vote(
	in prmNombre varchar(40),
	in prmAlias varchar(20),
	in prmRut varchar(10),
	in prmEmail varchar(60),
	in prmIdComuna int,
	in prmIdCandidato int
)
BEGIN
	set @cont = (select count(*) from votacion where trim(rut) = trim(prmRut) and estado = 1);

	if @cont <> 0 then
		select 0 as resp;
	else
		INSERT INTO votacion
		(nombre, alias, rut, email, idcomuna, idcandidato)
		VALUES(trim(prmNombre), trim(prmAlias), trim(prmRut), trim(prmEmail), prmIdComuna, prmIdCandidato)
		;
	
		select LAST_INSERT_ID() as resp; 
	end if;
END