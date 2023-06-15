const vDataUrl = 'backend/data.service.php';
const vVoteUrl = 'backend/vote.service.php';

const sendVote = (prmNombre,prmAlias,prmRut,prmEmail,prmIdComuna,prmIdCandidato,prmCanales) => {
    let vPrm = {
        'endpoint'    : 'vote', 
        'nombre'      : prmNombre,
        'alias'       : prmAlias,
        'rut'         : prmRut,
        'email'       : prmEmail,
        'idcomuna'    : prmIdComuna,
        'idcandidato' : prmIdCandidato,
        'canales'     : prmCanales
    };

    return new Promise((resolve, reject) => {
        $.post( vDataUrl, vPrm)
        .done(function( data ) {
            data = JSON.parse(data);

            if (data.cod == 200) {
                resolve(data.data);
            }else if (data.cod != 200) {
                reject(data.cod);
            }
        });
    });
};

const getCandidatos = () => {
    let vPrm = {'endpoint' : 'get_candidatos'};

    return new Promise((resolve, reject) => {
        $.post( vDataUrl, vPrm)
        .done(function( data ) {
            data = JSON.parse(data);

            if (data.cod == 200) {
                resolve(data.data);
            }else if (data.cod != 200) {
                reject(data.cod);
            }
        });
    });
};

const getRegions = () => {
    let vPrm = {'endpoint' : 'get_regions'};

    return new Promise((resolve, reject) => {
        $.post( vDataUrl, vPrm)
        .done(function( data ) {
            data = JSON.parse(data);

            if (data.cod == 200) {
                resolve(data.data);
            }else if (data.cod != 200) {
                reject(data.cod);
            }
        });
    });
};

const getCanales = () => {
    let vPrm = {'endpoint' : 'get_canales'};

    return new Promise((resolve, reject) => {
        $.post( vDataUrl, vPrm)
        .done(function( data ) {
            data = JSON.parse(data);

            if (data.cod == 200) {
                resolve(data.data);
            }else if (data.cod != 200) {
                reject(data.cod);
            }
        });
    });
};

const getComunas = (prmIdRegion) => {
    let vPrm = {'endpoint' : 'get_comunas', 'reg' : prmIdRegion};

    return new Promise((resolve, reject) => {
        $.post( vDataUrl, vPrm)
        .done(function( data ) {
            data = JSON.parse(data);

            if (data.cod == 200) {
                resolve(data.data);
            }else if (data.cod != 200) {
                reject(data.cod);
            }
        });
    });
};

const checkRut = (prmRut) => {
    let vPrm = {'endpoint' : 'check_rut', 'rut' : prmRut};

    return new Promise((resolve, reject) => {
        $.post( vDataUrl, vPrm)
        .done(function( data ) {
            data = JSON.parse(data);

            if (data.cod == 200) {
                resolve(data.data);
            }else if (data.cod != 200) {
                reject(data.cod);
            }
        });
    });
};

const addOptionRegion = (objRegions, objSelect) => {
    objRegions.forEach(element => {
        objSelect.append(new Option(element.nombre_corto, element.id));
    });
};

const addOptionCandidatos = (objCandidatos, objSelect) => {
    objCandidatos.forEach(element => {
        objSelect.append(new Option(element.nombre, element.id));
    });
};

const addOptionComuna = (objComunas, objSelect) => {
    objComunas.forEach(element => {
        objSelect.append(new Option(element.nombre, element.id));
    });
};

const addOptionCanales = (objCanales, objFieldset, arrCanales) => {
    objCanales.forEach(element => {
        let jqDiv = $("<div></div>");
        let jqChk = $(`<input type='checkbox' id='chk${element.id}' name='chk${element.id}' value='${element.id}'>`);
        let jqLbl = $(`<label for='chk${element.id}'>${element.canal}</label>`);

        jqDiv.append(jqChk,jqLbl);

        objFieldset.append(jqDiv);

        $(jqChk).on('change',function(e){
            if ($(this).prop('checked')) {
                arrCanales.push($(this).val());
            } else {
                arrCanales.splice(arrCanales.indexOf($(this).val()),1);
            }
        });
    });
};

// Validador de RUT
const Fn = {
	// Valida el rut con su cadena completa "XXXXXXXX-X"
	validaRut : function (rutCompleto) {
		rutCompleto = rutCompleto.replace("‐","-");

		if (!/^[0-9]+[-|‐]{1}[0-9kK]{1}$/.test( rutCompleto )) return false;
		
        var tmp 	= rutCompleto.split('-');
		var digv	= tmp[1]; 
		var rut 	= tmp[0];
		
        if ( digv == 'K' ) digv = 'k' ;
		
		return (Fn.dv(rut) == digv );
	},
	dv : function(T){
		var M=0,S=1;

		for(;T;T=Math.floor(T/10))
			S=(S+T%10*(9-M++%6))%11;

		return S?S-1:'k';
	}
};

// Helper de limpieza
const reiniciaAlerts = () => {
    $("#alertOk").hide();
    $("#alertErr").hide();
    $("#alertErrRut").hide();
    $("#alertInfo").hide();
};