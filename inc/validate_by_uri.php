<?php
include('automata.php');
include('duplicidad.php');
include('etiquetas.php');
include ('conexion.php');

      $url = $_POST['url'];
      $lineas = file($url);
      $count_errors=0;
      $validador=new Automata();
      $validador->validar($lineas);
      $strinError=implode(",", $validador->errores);

      //verificar duplicidad de datos 	  
      $arreglo=explode("\r\n", $url);
      $clase = new Duplicidad($arreglo);
      $clase->validate();

      //verificar etiquetas
      $verificar= new Etiquetas($url);
      $verificar->verificar();

      $tipo =("validar por URI"); 
      $nombre_archivo =$url = $_POST['url'];      
      $sql = "INSERT INTO registro (tipo_validacion, nombre_archivo, errores, fecha, hora)
      VALUES ('$tipo', '$nombre_archivo','$strinError',NOW(),NOW())";

      if ($conn->query($sql) === TRUE) {
      //echo "New record created successfully";
      } else {
         echo "Error: " . $sql . "<br>" . $conn->error;
       }
       $conn->close();
    ?> 