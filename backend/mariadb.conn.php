<?php
    $flag_conexion = 0;

    $conn = new mysqli('localhost','desis_user','desis_vote.2023,','desis_vote'); 
    
    $conn->set_charset('utf8');
    
    //Comprobación de conexión
    if($conn->connect_error){
        die('Error de conexion (' . $conn->connect_errno .') ' . $conn->connect_error);
    }else{
        $flag_conexion = 1;
    }
?>