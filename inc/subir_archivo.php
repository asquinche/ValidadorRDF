<?php
if ($_FILES['archivo']["error"] >0)
{
	echo "Error: " . $_FILES['archivo']['error'] ."<br>";/* AGREGAR UN MENSAJE SOBRE NINGÚN ARCHIVO CARGADO*/
}
else
{
	//echo "Archivo subido con éxito ";
}	

/*guardar los archivos en el servidor*/
	move_uploaded_file($_FILES['archivo']['tmp_name'],
	 'upload/'. $_FILES['archivo']['name']);

	$dir_subida = 'C:/xampp/htdocs/validadorRDF/upload/';
	$fichero_subido = $dir_subida . basename($_FILES['archivo']['name']);
?>