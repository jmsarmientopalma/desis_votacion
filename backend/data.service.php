<?php
    header('charset=utf-8');

    require_once 'mariadb.conn.php';

    date_default_timezone_set('America/Santiago');

    if ($_SERVER['REQUEST_METHOD'] == 'POST'){
        $data = json_decode(json_encode($_POST));

        $arrResp  = array("cod" => 200, "data" => []);
        
        if ($data->endpoint == 'get_regions') { // TRAE REGIONES
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
        } elseif ($data->endpoint == 'get_comunas') { // TRAE COMUNAS
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
        
        } elseif ($data->endpoint == 'get_candidatos') { // TRAE CANDIDATOS
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
        } else { // CASO PARA LLAMADA CON ENDPOINT DESCONOCIDO
            $arrResp["cod"] = 500;
        }

        echo json_encode($arrResp);
    }

    $conn->close();
    unset($conn);
?>