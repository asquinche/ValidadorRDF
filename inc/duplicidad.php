<?php 
header('Content-Type: text/html; charset=utf-8');
class Duplicidad{
	private  $errores=array("");
	private  $lineas=array("");
	private  $size_errores=0;

	public function __construct($lineas){ 
		$this->lineas=$lineas;
	}
	
	public function verificar(){
		foreach ($this->lineas as $clave => $linea) {
			if($this->count_repetidos($linea)>1){
				array_push($this->errores, "ERROR DE DUPLICIDAD "."Revise la línea #".$clave.": ".$linea);
				$this->size_errores++;
			}
	 	}
	}


	private function count_repetidos($cadena){
		$repetidos=0;
		$cadena=trim($cadena);
		foreach ($this->lineas  as $linea) {
			if($cadena==trim($linea)){
				$repetidos++;
			}
		}
		return 	$repetidos;
	}

	public function getErrores(){
		return $this->errores;
	}

	public function getSizeErrores(){
		return $this->size_errores;
	}

}


?>