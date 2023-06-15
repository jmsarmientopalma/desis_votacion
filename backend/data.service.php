<?php
    header('charset=utf-8');

    require_once 'mariadb.conn.php';

    date_default_timezone_set('America/Santiago');

    if ($_SERVER['REQUEST_METHOD'] == 'POST'){
        $data = json_decode(json_encode($_POST));

        $arrResp  = array("cod" => 200, "data" => []);

        $vEndpoint = $data->endpoint;
        
        if ($vEndpoint == 'get_regions') { // TRAE REGIONES
            $sql = "call sp_getRegion();";
            $rs = $conn->query($sql);

            if ($conn->errno == 0){

                while($fila = $rs->fetch_array(MYSQLI_ASSOC)){

                    $arrTemp = array(
                        "id"            => $fila["id"],
                        "nombre"        => $fila["nombre"],
                        "nombre_corto"  => $fila["nombre_corto"],
                        "codigo"        => $fila["codigo"]
                    );
        
                    array_push($arrResp['data'],$arrTemp);
        
                    unset($arrTemp);
                }

                $rs->close();
                unset($rs);
            }else{
                $arrResp["cod"] = 500;
            }
        } elseif ($vEndpoint == 'get_comunas') { // TRAE COMUNAS
            $idregion = $data->reg;
            $sql = "call sp_getComunas($idregion);";
            $rs = $conn->query($sql);

            if ($conn->errno == 0){

                while($fila = $rs->fetch_array(MYSQLI_ASSOC)){

                    $arrTemp = array(
                        "id"            => $fila["id"],
                        "nombre"        => $fila["nombre"]
                    );
        
                    array_push($arrResp['data'],$arrTemp);
        
                    unset($arrTemp);
                }

                $rs->close();
                unset($rs);
            }else{
                $arrResp["cod"] = 500;
            }
        
        } elseif ($vEndpoint == 'get_candidatos') { // TRAE CANDIDATOS
            $sql = "call sp_getCandidatos();";
            $rs = $conn->query($sql);

            if ($conn->errno == 0){

                while($fila = $rs->fetch_array(MYSQLI_ASSOC)){

                    $arrTemp = array(
                        "id"            => $fila["id"],
                        "nombre"        => $fila["nombre"]
                    );
        
                    array_push($arrResp['data'],$arrTemp);
        
                    unset($arrTemp);
                }

                $rs->close();
                unset($rs);
            }else{
                $arrResp["cod"] = 500;
            }
        } elseif ($vEndpoint == 'get_canales') { // TRAE CANDIDATOS
            $sql = "call sp_getCanales();";
            $rs = $conn->query($sql);

            if ($conn->errno == 0){

                while($fila = $rs->fetch_array(MYSQLI_ASSOC)){

                    $arrTemp = array(
                        "id"            => $fila["id"],
                        "canal"        => $fila["canal"]
                    );
        
                    array_push($arrResp['data'],$arrTemp);
        
                    unset($arrTemp);
                }

                $rs->close();
                unset($rs);
            }else{
                $arrResp["cod"] = 500;
            }
        } elseif ($vEndpoint == 'check_rut') { // CHEQUEO DE VOTO YA EMITIDO
            $rut = $data->rut;
            $sql = "call sp_checkVotoRut('$rut');";
            $rs = $conn->query($sql);

            if ($conn->errno == 0){

                while($fila = $rs->fetch_array(MYSQLI_ASSOC)){

                    $arrTemp = array(
                        "emitido" => $fila["emitido"]
                    );
        
                    array_push($arrResp['data'],$arrTemp);
        
                    unset($arrTemp);
                }

                $rs->close();
                unset($rs);
            }else{
                $arrResp["cod"] = 500;
            }
        } elseif ($vEndpoint == 'vote') { // GRABA VOTO Y CANALES
            $nombre = trim($data->nombre); 
            $alias = trim($data->alias); 
            $rut = trim($data->rut);
            $email = trim($data->email);
            $idcomuna = $data->idcomuna;
            $idcandidato = $data->idcandidato;
            $canales = $data->canales;

            $sql = "call sp_vote('$nombre','$alias','$rut','$email',$idcomuna,$idcandidato);";
            $rs = $conn->query($sql);

            $fila = $rs->fetch_array(MYSQLI_ASSOC); 

            if ($conn->errno == 0){
                $idvoto = intval($fila['resp']);

                if ($idvoto == 0) {
                    $arrResp["cod"] = 409; //RUT ya ha votado anteriormente
                } else {
                   foreach ($canales as $value) {
                        $conn->next_result();
                        $sqlCanales = "call sp_saveVotoCanal($idvoto,$value)";
                        $conn->query($sqlCanales);
                   }

                    // Si se llega acá, se asume que el grabado concluyó correctamente
                    $arrTemp = array(
                        "idvoto" => $idvoto,
                        "canales" => $canales
                    );

                    array_push($arrResp['data'],$arrTemp);
        
                    unset($arrTemp);
                }

                $rs->close();
                unset($rs);
            }else{
                $arrResp["cod"] = 500;
            }

        } else { // CASO PARA LLAMADA CON ENDPOINT DESCONOCIDO
            $arrResp["cod"] = 500;
        }

        echo json_encode($arrResp);
    }

    $conn->close();
    unset($conn);
?>