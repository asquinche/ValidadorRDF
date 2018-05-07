<?php 
include ('subir_archivo.php');
include('automata.php');
include ('duplicidad.php');
include ('etiquetas.php');
include ('conexion.php');


	$lineas = file($fichero_subido);
	$validador=new Automata();
    $validador->validar($lineas);
    $strinError=implode(",", $validador->errores);

    //verificar duplicidad de datos 	  
    $archivo_s=file_get_contents($fichero_subido);
    $arreglo=explode("\r\n", $archivo_s);
    $clase = new Duplicidad($arreglo);
    $clase->validate();

    
    $archivo_s=file_get_contents($fichero_subido);
    $verificar= new Etiquetas($archivo_s);
    $verificar->verificar();

    $tipo =("validar por archivo"); 
    $nombre_archivo = $_FILES['archivo']['name'];      
    $sql = "INSERT INTO registro (tipo_validacion, nombre_archivo, errores, fecha, hora)
    VALUES ('$tipo', '$nombre_archivo','$strinError',NOW(),NOW())";

    if ($conn->query($sql) === TRUE) {
    //echo "New record created successfully";
    } else {
    	echo "Error: " . $sql . "<br>" . $conn->error;
    }
    $conn->close();
?>

