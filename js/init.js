$(document).ready(() => {
    reiniciaAlerts();

    let regions = [];
    let candidatos = [];
    let canales = [];
    let postCanales = [];

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

    let idComuna = "0";
    let idCandidato = "0";
    let vNombre = "";
    let vAlias = "";
    let vRut = "";
    let vEmail = "";

    let validityRut = false;

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

    // Trae Canales
    getCanales()
    .then((data) => {
        canales = data;
        console.log(canales);
        addOptionCanales(canales, $('fieldset').eq(0), postCanales);
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

    // Handlers para Inputs
    $("#txtName").on('change',function(){vNombre = $(this).val()});
    $("#txtAlias").on('change',function(){vAlias = $(this).val()});
    $("#txtRut").on('change',function(){vRut = $(this).val()});
    $("#txtEmail").on('change',function(){vEmail = $(this).val()});
    $("#slComuna").on('change',function(){idComuna = $(this).val()});
    $("#slCandidato").on('change',function(){idCandidato = $(this).val()});
    
    $("#txtRut").on('change',function(){
        vRut = $(this).val();
        $("#alertInfo").hide();

        if (Fn.validaRut( vRut )){
            console.log('RUT OK');
            validityRut = true;

            // Chequeo de votación realizada
            checkRut(vRut)
            .then((data) => {
                if (parseInt(data[0].emitido) > 0) {
                    $("#spnRut").html(vRut);
                    $("#txtRut").val('');
                    $("#txtRut").focus();
                    $("#alertInfo").fadeIn();
                }
            })
            .catch((e) => {
                console.log(e);
                console.log('Error en validación de voto por RUT');
                alert('Por favor vuelva a ingresar el RUT');
                $("#txtRut").val('');
            });
        } else {
            console.log('RUT BAD');
            validityRut = false;
            alert('El RUT ingresado no es válido.');
            $("#txtRut").select();
        }
    });

    // Envío de Voto
    $("#btnVotar").click(function(event){
        event.preventDefault();
        $("fieldset").eq(0).removeClass('fieldset-err');

        reiniciaAlerts();

        // Validación de formulario
        if (!document.getElementById('txtName').validity.valid) {
            alert('Por favor corrija el Nombre.');
            $("#txtName").select();
            return false;
        }

        if (!document.getElementById('txtAlias').validity.valid) {
            alert('Por favor corrija el Alias.');
            $("#txtAlias").select();
            return false;
        }
        
        if (!validityRut) {
            alert('El RUT ingresado no es válido.');
            $("#txtRut").select();
            return false;
        }

        if (!document.getElementById('txtEmail').validity.valid) {
            alert('Por favor corrija el E-mail.');
            $("#txtEmail").select();
            return false;
        }

        if (idComuna == '0') {
            alert('Debe seleccionar una Comuna.');
            $("#slComuna").focus();
            return false;
        }

        if (idCandidato == '0') {
            alert('Debe seleccionar un Candidato.');
            $("#slCandidato").focus();
            return false;
        }

        if (postCanales.length < 2) {
            alert('Por favor seleccione al menos 2 canales indicando cómo se entero de nosotros.');
            // $("input[type='checkbox']").eq(0).focus();
            $("fieldset").eq(0).addClass('fieldset-err').focus();
            return false;
        }

        // Pasan todas las validaciones y se llama al método de grabado
        sendVote(vNombre,vAlias,vRut,vEmail,idComuna,idCandidato,postCanales)
        .then((data) => {
            $("#txtName").val('');
            $("#txtAlias").val('');
            $("#txtRut").val('');
            $("#txtEmail").val('');
            $("#slRegion").val('0');
            $("#slComuna").val('0');
            $("#slCandidato").val('0');

            $("#alertOk").fadeIn();
        })
        .catch((e) => {
            console.log(e);
            if (e == 409) {
                console.log('El RUT ya ha votado anteriormente');
                $("#spnRut").html(vRut);
                $("#txtRut").val('');
                $("#txtRut").focus();
                $("#alertInfo").fadeIn();
            } else {
                console.log(e);
                $("#alertErr").show();
            }
        });

    });

    // Formateo de RUT
    $("#txtRut").on('keyup',function(event){
        let strRut = $(this).val();

        if(strRut.length > 1){
            var vDig = "";
            var vRut = "";
            var vROK = "";
    
            strRut = strRut.replace("-","");
    
            vDig = strRut.substr(strRut.length-1,1);
            vRut = strRut.substr(0,strRut.length-1);
    
            vROK = vRut+"-"+vDig;
    
            $(this).val(vROK);
        }else{
            $(this).val(strRut);
        }
    });
});