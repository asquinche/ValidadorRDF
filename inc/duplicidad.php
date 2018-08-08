<?php 
header('Content-Type: text/html; charset=utf-8');

class Duplicidad{
	private  $errors=array("");
	private  $input_txt=array();
	private  $sizeErrors=0;

	public function __construct($txt){ 
		$this->input_txt=$txt;
	}

	public function validate(){
		$q=0; //State
		$propState1=array(); //Store to q=1
		$propState2=array(); //Store to q=2

		//Rules
		$r_open='/^<.+\:.+>$/';
		$r_close='/^<\/.+>$/';
		$r_item1='/^<.+>.+<\/.+>$/'; // <asdasd>valor</asdas>
		$r_item2='/^<.+(\s)\/>$/'; // <asdasdsadd />

		foreach ($this->input_txt as $num_linea => $linea) {

			$linea=trim($linea);
			//echo "Estado: ".$q."<br>Linea: ".htmlspecialchars($linea)."<br><br>";
	       	switch ($q) {
	       	//estado0 a 1
        	case 0:
        	if (preg_match($r_open, $linea)){ //validando primera línea con primera regla
        		$q=1;
        		$propState1=array();
        		break;
        	}
        	break;

              //estado1 a 2
              case 1:

              	if (preg_match($r_item1, $linea)){
              		$q=1;

              		if (array_key_exists($linea, $propState1)) {
              			array_push($this->errors,"Revise la línea <b>{$num_linea}</b> : " ."<b>" . htmlspecialchars($linea) . "</b>"." está duplicada". "\n");
              			$this->sizeErrors++;
              		}else{
              			$propState1[$linea]=$num_linea;
              		}
              	}elseif(preg_match($r_item2, $linea)){
                	$q=1;
                 	if (array_key_exists($linea, $propState1)) {
              			array_push($this->errors,"Revise la línea <b>{$num_linea}</b> : " ."<b>" . htmlspecialchars($linea) . "</b>"." está duplicada". "\n");
              			$this->sizeErrors++;
              		}else{
              			$propState1[$linea]=$num_linea;
              		}
              	}elseif(preg_match($r_close, $linea)){
              		$q=0;
             	}
              	break;

              //estado2 a 3 
              case 2:
              if (preg_match($r_item1, $linea)){
              		$q=2;

              		if (array_key_exists($linea, $propState1)) {
              			array_push($this->errors,"Revise la línea <b>{$num_linea}</b> : " ."<b>" . htmlspecialchars($linea) . "</b>"." está duplicada". "\n");
              			$this->sizeErrors++;
              		}else{
              			$propState1[$linea]=$num_linea;
              		}
              	}elseif(preg_match($r_item2, $linea)){
                	$q=2;
                 	if (array_key_exists($linea, $propState1)) {
              			array_push($this->errors,"Revise la línea <b>{$num_linea}</b> : " ."<b>" . htmlspecialchars($linea) . "</b>"." está duplicada". "\n");
              			$this->sizeErrors++;
              		}else{
              			$propState1[$linea]=$num_linea;
              		}
              	}elseif(preg_match($r_close, $linea)){
              		$q=1;
             	}
              	break;

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