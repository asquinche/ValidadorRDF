<?php
header('Content-Type: text/html; charset=utf-8');
class Etiquetas{

private  $error_tag=array("");
private  $txt=array("");
private  $size_error_tag=0;

public function __construct($txt){ 
		$this->txt=$txt;
	}

function verificar() {
	libxml_use_internal_errors(true);
$sxe = simplexml_load_string($this->txt);
if ($sxe === false) {
	foreach(libxml_get_errors() as $error) {
	array_push($this->error_tag, $error->message);
				$this->size_error_tag++;

    
        //echo "\t", $error->message;
    }
    }
}
public function getErrores(){
		return $this->error_tag;
	}

	public function getSizeErrores(){
		return $this->size_error_tag;
	}

	
}

?> 
