<?php
include ('inc/config.php');
include ('inc/validate_by_uri.php');
include ("template_path/head.php");
include ("template_path/header.php");
?>
<!DOCTYPE html>
<html lang="es">
<body>
  <section id="about" class="about">
    <div class="container text-center">
      <table border style="margin: 0 auto; width: 60%" class="table table-bordered">
        <tr><th colspan="2">DETALLES GENERALES</th></tr>
        <tr><th>URL</th><td><?php $url = $_POST['url']; echo ($url)?></td></tr>
        <tr><th>Doctype:</th><td>RDF/XML</td></tr>
        <tr><th>Número de errores:</th>
          <td>
            <?php 
            $num = $val_sintaxis->getSizeErrors() + $val_duplicidad->getSizeErrors()+$val_etiquetas->getSizeErrors();
            echo $num;
            ?>
          </td>
        </tr>
      </table>
    </div> 
  </section>
  <div class="container">
    <fieldset class="front">
      <legend class="main">Mensajes</legend>
      <div class="resultados" id="resultados">
        <?php
        if ($num==0){
          echo"Su archivo no contiene errores.";
        }else{
          /*Recorrer los errores Sintaxis*/
          $errores=$val_sintaxis->getErrors();
          foreach ($errores as $error){
            if ($error) {
              echo "<font color='red'><strong>ERROR:</strong></font>";
              echo "<div class='errores'>".$error."</div>";
            } 
          } 
          /*Recorrer los errores Duplicidad*/
          $errores=$val_duplicidad->getErrors();
          foreach ($errores as  $error) {
            if ($error) {
              echo "<font color='blue'><strong>DUPLICADOS:</strong></font>";
              echo  "<div class='errores'>".$error."</div>";
            }
          }
          /*Recorrer los errores Etiquetas*/
          $errores=$val_etiquetas->getErrors();
          foreach ($errores as  $error) {
            if ($error) {
              echo "<font color='green'><strong>WARNING:</strong></font>";
              echo  "<div class='errores'>".$error."</div>";
            }
          }
            /*Recorrer los errores Etiquetas
            foreach(libxml_get_errors() as $error) {
            echo "<font color='green'><strong>REVISAR:</strong></font>";
            echo "<div class='errores'>".$error->message."</div>";
            }*/
        }
        ?>
      </div>
    </fieldset><br>
    <fieldset>
      <legend class="main">Modelo de datos</legend>
      <?php
      if ($num>0){
        echo"Corrija los errores para mostrar el modelo de datos";
      }else{
        include('inc/modelo_datos.php');
        echo "<br>";
        echo "<table border style='margin: 0 auto; width: 20%' class='table table-bordered'>
        <tr><th>Simbología de colores</th></tr>
        <tr>
          <td bgcolor='#FFFFCC'>Recurso</td>
        </tr>
        <tr>
          <td bgcolor='#CCFFCC'>Propiedad</td>
        </tr>
        <tr>
          <td bgcolor='#E7E7EF'>Literal</td>
        </tr>
      </table>";
      }
      ?>   
    </fieldset><br>
  </div>
  <?php 
  include ("template_path/footer.php");
  ?>
</body>
<script type="text/javascript">
  $(document).ready(function() {
    $('#modelo').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'csv', 'excel', 'pdf','pageLength' 
        ],
        "paging":   true
    } );
} );
</script>
</html>
