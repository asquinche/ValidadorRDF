<?php
include ("inc/config.php");
include ("template_path/head.php");
include ("template_path/header.php");
include("inc/conexion.php"); 
?>
<!DOCTYPE html>
<html lang="es">
<body>
  <div class="container">
    <div class="container text-center">
    <h1><p><strong>Historial de archivos validados</strong></p></h1>
    <?php
        $sql = "SELECT id, tipo_validacion, nombre_archivo, errores, fecha, hora FROM registro";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
         // output data of each row
          echo "<table  id='historial'  style='margin: 0 auto; width: 100%' class='table table-bordered'>";
          echo "<thead>";
          echo "<tr>";
          echo "<th bgcolor='#FCD824'>Id</th>";
          echo "<th bgcolor='#FCD824'>Tipo de validación</th>";
          echo "<th bgcolor='#FCD824'>Nombre de archivo</th>";
          echo "<th bgcolor='#FCD824'>Errores</th>";
          echo "<th bgcolor='#FCD824'>Fecha</th>";
          echo "<th bgcolor='#FCD824'>Hora</th>";
          echo "</tr>";
          echo "</thead>";
           echo "<tbody>";
          while($row = $result->fetch_assoc()) {
           
            echo "<tr>";
            echo "<td> $row[id] </td>";
            echo "<td> $row[tipo_validacion] </td>";
            echo "<td> $row[nombre_archivo] </td>";
            echo "<td> $row[errores] </td>";
            echo "<td> $row[fecha] </td>";
            echo "<td> $row[hora] </td>";
            echo "</tr>";
            
          }
          echo "</tbody>";
        }else{
          echo "No hay datos";
        }
         $conn->close();
        echo "</table>";
    ?>
  </div>
  </div>
  <?php 
  include ("template_path/footer.php");
  ?>
</body>
<script type="text/javascript">
  $(document).ready(function() {
    $('#historial').DataTable( {
        dom: 'Bfrtip',
        buttons: [
        'pageLength','excel' 
        ],
    } );
} );
</script>
</html>