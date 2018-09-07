<?php
include('sintaxis.php');
include('duplicidad.php');
include('etiquetas.php');
include ('conexion.php');

      $url = $_POST['url'];
      $a = @get_headers($url);
      if (is_array($a)) {
        $lineas = file($url);
        //validar sintaxis
        $val_sintaxis= new Sintaxis($lineas);
        $val_sintaxis->validate();
        $strinError=implode($val_sintaxis->getErrors());

        //verificar duplicidad de datos     
        $val_duplicidad = new Duplicidad($lineas);
        $val_duplicidad->validate();
        $strinError=$strinError.implode($val_duplicidad->getErrors());

        //verificar etiquetas
        $txt=implode("", $lineas);
        $val_etiquetas= new Etiquetas($txt);
        $val_etiquetas->validate();

        $tipo =("validar por URI"); 
        $nombre_archivo =$url = $_POST['url'];
        if (empty($strinError)) {
          $strinError='No se encontró errores';
        }
        $sql = "INSERT INTO registro (tipo_validacion, nombre_archivo, errores, fecha, hora)
        VALUES ('$tipo', '$nombre_archivo','$strinError',NOW(),NOW())";
          if ($conn->query($sql) === TRUE) {
          //echo "New record created successfully";
          } else {
          echo "Error: " . $sql . "<br>" . $conn->error;
          } 
       $conn->close();
     } else {
        include('sin_conexion.php');
    }
    ?> 