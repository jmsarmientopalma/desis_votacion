$(document).ready(() => {
    $("#alertOk").hide();
    $("#alertErr").hide();

    let regions = [];

    let candidatos = [];

    let comunas = [{
        id : '0',
        nombre : '- Seleccione una región -',
        nombre_corto : '- Seleccione una región -'
    }];

    let firstElement = {
        id : '0',
        nombre : '- Seleccione un elemento -',
        nombre_corto : '- Seleccione un elemento -'
    };

    let idRegion = "0";
    let idComuna = "0";
    let idCandidato = "0";
    let vNombre = "";
    let vAlias = "";
    let vEmail = "";

    // Trae Regiones
    getRegions()
    .then((data) => {
        regions = data;
        regions.unshift(firstElement);

        addOptionRegion(regions, $('#slRegion'));
    })
    .catch((e) => {
        console.log(e);
        $("#alertErr").show();
    });

    // Trae Candidatos
    getCandidatos()
    .then((data) => {
        candidatos = data;
        candidatos.unshift(firstElement);

        addOptionCandidatos(candidatos, $('#slCandidato'));
    })
    .catch((e) => {
        console.log(e);
        $("#alertErr").show();
    });

    // Inicializa Select Comunas
    addOptionComuna(comunas, $('#slComuna'));

    // Handler para cambio de región
    $("#slRegion").on('change',function(event){
        // Trae Comunas
        getComunas($(this).val())
        .then((data) => {
            $("#slComuna").html('');
            comunas = data;
            comunas.unshift(firstElement);

            addOptionComuna(comunas, $('#slComuna'));
        })
        .catch((e) => {
            console.log(e);
            $("#alertErr").show();
        });
    });
});