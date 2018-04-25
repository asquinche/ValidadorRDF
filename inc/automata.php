<?php
include('expresiones_regulares.php');
class Automata{
        public  $errores=array("");
        public  $count_errors=0;
	
	public function validar($lineas){
        $estado=0;
		foreach ($lineas as $num_linea => $linea) {
      /*array_push($this->errores,$estado.": Estado<br />\n");*/
        switch ($estado) {

        	//estado0 a 1
        	case 0:
        	if (ValidatorRules::r1($linea)){ //validando primera línea con primera regla
              $estado=1;
              break;
            }else{
            	array_push($this->errores,"Revise la línea número <b>{$num_linea}</b>:" . htmlspecialchars($linea) . "\n");

              	$this->count_errors++;
              	$estado=1;
                break 2;
              }
              break;

              //estado1 a 2
              case 1:
              if (ValidatorRules::r2($linea)){
              	$estado=2;
              }elseif (ValidatorRules::r14($linea)) {
                $estado=2;
              	break;
                 }else{
              	array_push($this->errores,"ERROR DE SINTAXIS RDF/XML <br /> Revise la línea: #<b>{$num_linea}</b> : " . htmlspecialchars($linea) . "\n");
              	$this->count_errors++;
              	$estado=2;
              }
              break;

              //estado2 a 3 
              case 2:
              if (ValidatorRules::r3($linea)){
              	$estado=3;
              }elseif (ValidatorRules::r5($linea)) {
              	$estado=4;
              }elseif (ValidatorRules::r4($linea)) {
                $estado=2;
              }elseif (ValidatorRules::r13($linea)) {
                $estado=1;
              	break;
              }else{
              	array_push($this->errores,"ERROR DE SINTAXIS <br /> Revise la línea: #<b>{$num_linea}</b> : " . htmlspecialchars($linea) . "\n");
              	$this->count_errors++;
              	$estado=2;
              }
              break;

              case 3:
                if (ValidatorRules::r3($linea)){
                $estado=3;
              }elseif (ValidatorRules::r4($linea)) {
                $estado=2;
                break;
              }else{
                array_push($this->errores,"ERROR DE SINTAXIS <br /> Revise la línea: #<b>{$num_linea}</b> : " . htmlspecialchars($linea) . "\n");
                $this->count_errors++;
                $estado=2;
              }
              break;

              case 4:
              	if (ValidatorRules::r11($linea)){
              	$estado=2;
              }elseif (ValidatorRules::r6($linea)) {
              	$estado=4;
              }elseif (ValidatorRules::r8($linea)) {
                $estado=4;
              }elseif (ValidatorRules::r9($linea)) {
                $estado=4;
              }elseif (ValidatorRules::r10($linea)) {
                $estado=4;
                 }elseif (ValidatorRules::r7($linea)) {
                $estado=5;
              	break;
              }else{
              	array_push($this->errores,"ERROR DE SINTAXIS <br /> Revise la línea: #<b>{$num_linea}</b> : " . htmlspecialchars($linea) . "\n");
              	$this->count_errors++;
              	$estado=3;
              }
              break;

              case 5:
              if (ValidatorRules::r11($linea)){
              	$estado=4;
              }elseif (ValidatorRules::r8($linea)) {
                $estado=5;
              }elseif (ValidatorRules::r9($linea)) {
                $estado=5;
              }elseif (ValidatorRules::r10($linea)) {
                $estado=5;
              	break;
              }else{
              	array_push($this->errores,"ERROR DE SINTAXIS <br /> Revise la línea: #<b>{$num_linea}</b> : " . htmlspecialchars($linea) . "\n");
              	$this->count_errors++;
              	$estado=1;
              }
              }
        }
        

    }
}

?>