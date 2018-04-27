<?php
include ('inc/config.php');
include ("template_path/head.php");
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
        <div class="col-sm-2"><a href="index.php" title="Validador RDF"> <img border="0" src="http://www.w3.org/RDF/icons/rdf_w3c_icon.128"
alt="RDF Resource Description Framework Icon"/></a></div>
        <div class="col-sm-5"><h2><strong>HISTORIAL</strong></h2>
        <p>Reporte de uso de la aplicación</p></div>
        <div class="col-sm-3"><img src="img/lodutpl.png"></div>   
      </div>
    </header>

    <section id="about" class="about">
      <div class="container text-center">
        <table border style="margin: 0 auto; width: 75%">
            <tr ><th colspan="5">DETALLES GENERALES</th></tr>
    <th>Tipo de validación</th>

    <th>Nombre de archivo</th>

    <th>Errores</th>

    <th>Fecha</th>

    <th>Hora</th>

  </tr>

  <tr>

    <td>URI</td>

    <td>Ecuador.rdf</td>

    <td>0 errores</td>

    <td>27/04/2018</td>

    <td>17:22</td>

  </tr>

</table>
      </div> 
    </section>
<?php
    include ("template_path/footer.php");
?> 