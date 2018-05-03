<?php
include ('inc/config.php');
include ("template_path/head.php");
include("inc/conexion.php"); 
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="img/rdf.png">

    <title>VALIDADOR|RDF</title>

    <!-- Custom CSS -->
    <link href="css/rdfval.css" rel="stylesheet">

</head>
<!-- Header -->
    <header class='rdfval' id="rdfval">
      <div class= 'row'>
        <div class="col-sm-2"><a href="/" title="Validador RDF"> <img border="0" src="http://www.w3.org/RDF/icons/rdf_w3c_icon.128"
alt="RDF Resource Description Framework Icon"/></a></div>
        <div class="col-sm-5"><h2><strong>HISTORIAL</strong></h2>
        <p>Reporte de uso de la aplicación</p></div>
        <div class="col-sm-3"><img src="img/lodutpl.png"></div>   
      </div>
    </header>
    <section id="about" class="about">
      <div class="container text-center">
        <?php
        $sql = "SELECT id, tipo_validacion, nombre_archivo, errores, fecha, hora FROM registro";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
         // output data of each row
          echo "<table class='table table-bordered'>";
          echo "<thead>
          <tr ><th colspan='6'>DETALLES GENERALES</th></tr>
          <tr>
          <th>Id</th>
          <th>Tipo de validación</th>
          <th>Nombre de archivo</th>
          <th>Errores</th>
          <th>Fecha</th>
          <th>Hora</th>
          </tr>
          </thead>";
          while($row = $result->fetch_assoc()) {
            echo "<tr>
            <td> $row[id] </td>
            <td Width=50%> $row[tipo_validacion] </td>
            <td> $row[nombre_archivo] </td>
            <td> $row[errores] </td>
            <td> $row[fecha] </td>
            <td> $row[hora] </td></tr>";
          }
        } else {
          echo "0 results";
        }
          $conn->close(); 
        ?>
    </div> 
  </section>

