<?php  
//tomamos los datos del archivo conexion.php  
include("conexion.php");  
$query = "select * from registro";     // Esta linea hace la consulta 
$result = mysql_query($query);
while ($registro = mysql_fetch_array($result)){  
echo "  
    <tr>  
      <td width='150'>".$registro['id']."</td>  
      <td width='150'>".$registro['']."</td>  
      <td width='150'>".$registro['']."</td>
      <td width='150'>".$registro['']."</td>
      <td width='150'>".$registro['fecha']."</td>  
      <td width='150'>".$registro['hora']."</td>  
      <td width='150'></td>  

    </tr>  
";  
}   
?>  