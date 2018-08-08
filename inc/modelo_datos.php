<?php
define("RDFAPI_INCLUDE_DIR", "C:/xampp/htdocs/validadorRDF/api/");
include(RDFAPI_INCLUDE_DIR . "RDFAPI.php");

$modelo = $lineas;
$contenido = "";
foreach($modelo as $linea){
  $contenido .= $linea."";
}
if ($val_sintaxis->getSizeErrors()==0) {
file_put_contents("upload/modelo.rdf", $contenido);

// Filename of an RDF document
$base="upload/modelo.rdf";

// Create a new MemModel
$model = ModelFactory::getDefaultModel();

// Load and parse document
$model->load($base);

// Output model as HTML table

	$model->writeAsHtmlTable();
}
?>