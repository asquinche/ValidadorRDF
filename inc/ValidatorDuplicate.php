<?php 
	class ValidatorDuplicate{

		private  $errors=array();
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
			$r_item='/^<.+>.+<\/.+>$/';

			foreach ($this->input_txt as $num_linea => $linea) {

				$linea=trim($linea);
				//echo "Estado: ".$q."<br>Linea: ".htmlspecialchars($linea)."<br><br>";
	       		switch ($q) {
		        	case 0:
			        	if (preg_match($r_open, $linea)){ //validando primera línea con primera regla
			              $q=1;
			              $propState1=array();
			              break;
			            }
		              	break;

		            case 1:
		              	if (preg_match($r_item, $linea)){
			              	$q=1;
			            	if (array_key_exists($linea, $propState1)) {
			            		array_push($this->errors,"DUPLICIDAD RDF/XML <br /> Revise la línea: #<b>{$num_linea}</b> : " . htmlspecialchars($linea) . "\n");
              					$this->sizeErrors++;
			            	}else{
			            		$propState1[$linea]=$num_linea;
			            	}
			                break;
			            } elseif(preg_match($r_close, $linea)){
			            	$q=0;
			            	break;
			            } elseif (preg_match($r_open, $linea)) {
			           		$q=2;
			            	$propState2=array();
			                break;
			            }
		              	break;
		            case 2:
		              	echo "Case2";
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