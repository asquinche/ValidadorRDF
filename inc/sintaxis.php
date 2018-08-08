<?php
include('expresiones_regulares.php');
class Sintaxis{
  private  $errors=array("");
  private  $input_txt=array();
  private  $sizeErrors=0;

  public function __construct($txt){ 
    $this->input_txt=$txt;
  }


	public function validate(){
    $estado=0;
		foreach ($this->input_txt as $num_linea => $linea) {
      /*array_push($this->errores,$estado.": Estado<br />\n");*/
        switch ($estado) {

        	//estado0 a 1
        	case 0:
          if (ValidatorRules::r15($linea)){ //validando primera línea con primera regla
              $estado=0;
              }elseif (ValidatorRules::r16($linea)) {
                $estado=6;
              }elseif(ValidatorRules::r1($linea)){ //validando primera línea con primera regla
              $estado=1;
              break;
            }else{
            	$num_linea_t=$num_linea+1;
                array_push($this->errors,"El archivo ingresado no es RDF/XML La línea <b>{$num_linea_t}</b>:"."<b>" .htmlspecialchars($linea) ."</b>" . "\n". "no determina el formato RDF/XML.");
                $this->sizeErrors++;
              	//$estado=1;
                break 2;
              }
              break;

              //estado1 a 2
              case 1:
              if (ValidatorRules::r15($linea)){
                $estado=1;
              }elseif(ValidatorRules::r16($linea)){
                $estado=6;
              }elseif(ValidatorRules::r2($linea)){
              	$estado=2;
              }elseif (ValidatorRules::r14($linea)) {
                $estado=2;
              	break;
                 }else{
              	$num_linea_t=$num_linea+1;
                array_push($this->errors,"Revise la línea <b>{$num_linea_t}</b>:"."<b>" .htmlspecialchars($linea) ."</b>" . "\n". "no cumple con la sintaxis RDF/XML.");
                $this->sizeErrors++;
              	//$estado=2;
              }
              break;

              //estado2 a 3 
              case 2:
              if (ValidatorRules::r15($linea)){
                $estado=2;
              }elseif(ValidatorRules::r16($linea)){
                $estado=6;
              }elseif (ValidatorRules::r3($linea)){
              	$estado=3;
              }elseif (ValidatorRules::r5($linea)) {
              	$estado=4;
              }elseif (ValidatorRules::r4($linea)) {
                $estado=2;
              }elseif (ValidatorRules::r13($linea)) {
                $estado=1;
              	break;
              }else{
              	$num_linea_t=$num_linea+1;
                array_push($this->errors,"Revise la línea <b>{$num_linea_t}</b>:"."<b>" .htmlspecialchars($linea) ."</b>" . "\n". "no cumple con la sintaxis RDF/XML.");
                $this->sizeErrors++;
              	//$estado=2;
              }
              break;

              case 3:
              if (ValidatorRules::r15($linea)){
                $estado=3;
              }elseif(ValidatorRules::r16($linea)){
                $estado=6;
              }elseif (ValidatorRules::r3($linea)){
                $estado=3;
              }elseif (ValidatorRules::r4($linea)) {
                $estado=2;
                break;
              }else{
                $num_linea_t=$num_linea+1;
                array_push($this->errors,"Revise la línea <b>{$num_linea_t}</b>:"."<b>" .htmlspecialchars($linea) ."</b>" . "\n". "no cumple con la sintaxis RDF/XML.");
                $this->sizeErrors++;
                //$estado=2;
              }
              break;

              case 4:
              if (ValidatorRules::r15($linea)){
                $estado=4;
              }elseif(ValidatorRules::r16($linea)){
                $estado=6;
              }elseif (ValidatorRules::r11($linea)){
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
                $num_linea_t=$num_linea+1;
              	array_push($this->errors,"Revise la línea <b>{$num_linea_t}</b>:"."<b>" .htmlspecialchars($linea) ."</b>" . "\n". "no cumple con la sintaxis RDF/XML.");
              	$this->sizeErrors++;
              	//$estado=3;
              }
              break;

              case 5:
              if (ValidatorRules::r15($linea)){
                $estado=5;
              }elseif(ValidatorRules::r16($linea)){
                $estado=6;
              }elseif (ValidatorRules::r11($linea)){
              	$estado=4;
              }elseif (ValidatorRules::r8($linea)) {
                $estado=5;
              }elseif (ValidatorRules::r9($linea)) {
                $estado=5;
              }elseif (ValidatorRules::r10($linea)) {
                $estado=5;
              	break;
              }else{
              	$num_linea_t=$num_linea+1;
                array_push($this->errors,"Revise la línea <b>{$num_linea_t}</b>:"."<b>" .htmlspecialchars($linea) ."</b>" . "\n". "no cumple con la sintaxis RDF/XML.");
                $this->sizeErrors++;
              }
              break;

              case 6:
              if (ValidatorRules::r17($linea)){
                $estado=6;
              }elseif (ValidatorRules::r18($linea)) {
                $estado=0;
              }elseif (ValidatorRules::r18($linea)) {
                $estado=1;
              }elseif (ValidatorRules::r18($linea)) {
                $estado=2;
              }elseif (ValidatorRules::r18($linea)) {
                $estado=3;
              }elseif (ValidatorRules::r18($linea)) {
                $estado=4;
              }elseif (ValidatorRules::r18($linea)) {
                $estado=5;
                break;
              }else{
                $num_linea_t=$num_linea+1;
                array_push($this->errors,"Revise la línea <b>{$num_linea_t}</b>:"."<b>" .htmlspecialchars($linea) ."</b>" . "\n". "no cumple con la sintaxis RDF/XML.");
                $this->sizeErrors++;
              }
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