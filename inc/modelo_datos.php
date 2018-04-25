<?php
define("RDFAPI_INCLUDE_DIR", "C:/xampp/htdocs/validadorRDF/api/");
include(RDFAPI_INCLUDE_DIR . "RDFAPI.php");

$archivo = $lineas;
$contenido = "";
foreach($archivo as $linea){
  $contenido .= $linea."\n";
}
if ($validador->count_errors==0) {
file_put_contents("upload/archivo.rdf", $contenido);

// Filename of an RDF document
$base="upload/archivo.rdf";

// Create a new MemModel
$model = ModelFactory::getDefaultModel();

// Load and parse document
$model->load($base);

// Output model as HTML table

	$model->writeAsHtmlTable();
	# code...
}
?>