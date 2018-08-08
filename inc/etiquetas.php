<?php
header('Content-Type: text/html; charset=utf-8');
class Etiquetas{

	private  $errors=array("");
	private  $input_txt="";
	private  $sizeErrors=0;

	public function __construct($txt){ 
		$this->input_txt=$txt;
	}

	function validate() {
		libxml_use_internal_errors(true);
		$sxe = simplexml_load_string($this->input_txt);
		if ($sxe === false) {
			foreach(libxml_get_errors() as $error) {
				array_push($this->errors, $error->message);
				$this->sizeErrors++;
	    	}
	    }
	}


	public function getErrors(){
		return $this->errors;
	}

	public function getSizeErrors(){
		return $this->sizeErrors;
	}	
}

?> 
