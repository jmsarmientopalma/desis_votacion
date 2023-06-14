const vDataUrl = 'backend/data.service.php';
const vVoteUrl = 'backend/vote.service.php';

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