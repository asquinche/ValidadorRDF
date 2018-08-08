<?php
if ($_FILES['archivo']["error"] >0)
{
	echo "No se puede subir el archivo"."Error: " . $_FILES['archivo']['error'] ."<br>";
}

$total_rdfs = count(glob('upload/{*'.$_FILES['archivo']['name'].'}',GLOB_BRACE));
if($total_rdfs>0){
	$name = $total_rdfs.'_'.$_FILES['archivo']['name'];
}else{
	$name = $_FILES['archivo']['name'];
}


move_uploaded_file($_FILES['archivo']['tmp_name'],'upload/'. $name);
$dir_subida = 'C:/xampp/htdocs/validadorRDF/upload/';
$fichero_subido = $dir_subida . $name;
?>