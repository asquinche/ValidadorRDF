<?php
include ('inc/config.php');
include ('inc/validate_by_file.php');
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
        <div class="col-sm-2"><a href="index.php" title="Validador RDF"><img border="0" src="http://www.w3.org/RDF/icons/rdf_w3c_icon.128"
alt="RDF Resource Description Framework Icon"/></a></div>
        <div class="col-sm-5"><h2><strong>Resultados de Validación</strong></h2>
        <p>Mostrando resultados</p></div>
        <div class="col-sm-3"><img src="img/lodutpl.png"></div>   
      </div>
    </header>


<!-- About -->
    <section id="about" class="about">
      <div class="container text-center">
        <table border style="margin: 0 auto; width: 75%">
        	<tr ><th colspan="2">DETALLES GENERALES</th></tr>
        	<tr><th>Archivo:</th><td><?php echo $_FILES['archivo']['name'] ?></td></tr>
        	<tr><th>Doctype:</th><td>RDF/XML</td>
        	</tr>
        	<tr><th>Número de errores:</th><td><?php echo $validador->count_errors;?></td></tr>
        </table>
      </div> 
    </section>
    <div class="container">
                    <fieldset class="front">
                      <legend class="main">Mensajes</legend>
                      <div class="resultados" id="resultados">
        <?php
      foreach ($validador->errores as $error){
        echo "<div class='errores'>".$error."</div>";
      }
      ?> 
    </div>
    </fieldset><br>
    <fieldset>
      <legend class="main">Modelo de datos</legend>
        <?php
      include('inc/modelo_datos.php'); 
      ?>   
      </fieldset>
<?php
    include ("template_path/footer.php");
?> 
