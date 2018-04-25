<?php  
include('automata.php');
include('duplicidad.php');
include('etiquetas.php');
include ('conexion.php');


        $txt = $_POST['texto'];
        $lineas = explode("\n",$txt);

       	$validador= new Automata();
       	$validador->validar($lineas);

        $strinError=implode(",", $validador->errores);

        

       	//verificar duplicidad de datos 	  
    		$arreglo=explode("\r\n", $txt);
    		$clase = new Duplicidad($arreglo);
    		$clase->verificar();

        $verificar= new Etiquetas($txt);
        $verificar->verificar();

        $tipo =("validar por entrada directa"); 
        $nombre_archivo ="$txt";      
        $sql = "INSERT INTO registro (tipo_validacion, nombre_archivo, errores, fecha, hora)
        VALUES ('$tipo', '$nombre_archivo','$strinError',NOW(),NOW())";

        if ($conn->query($sql) === TRUE) {
          //echo "New record created successfully";
        } else {
         echo "Error: " . $sql . "<br>" . $conn->error;
       }
       $conn->close();
   
?>