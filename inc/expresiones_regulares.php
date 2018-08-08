<?php 
header('Content-Type: text/html; charset=utf-8');

class ValidatorRules {

	public static function r1($cadena){
		$cadena=trim($cadena);
		return preg_match('/^<\\?xml(\s)*([a-z]+\=\"[a-zA-Z0-9\.\-]+\"(\s)*)+\\?>$/', $cadena);
	}

	public static function r2($cadena){
		$cadena=trim($cadena);
		return preg_match('/^<rdf:RDF$/', $cadena);
	}

	public static function r3($cadena){
		$cadena=trim($cadena);
		return preg_match('/^xmlns:[a-z0-9]+\\=\"http:\\/\\/[a-zA-Z0-9\.\-\#\/\_]+\"$/', $cadena);
	}

	public static function r4($cadena){
		$cadena=trim($cadena);
		return preg_match('/^xmlns:[a-z0-9]+\\=\"http:\\/\\/[a-z0-9\.\-\#\/]+\"(\s)*>$/', $cadena);
	}

	public static function r5($cadena){
		$cadena=trim($cadena);
		return preg_match('/^<([a-z:a-zA-Z]+(\s)[a-z:a-z]+\=\"http:\/\/[0-9a-zA-ZñÑáéíóúÁÉÍÓÚ\.\%\_\,\&\-\xe2\x80\x93\(\)\#\/\?\=\;\ã]*\")+(\s)*>$/', $cadena);
	}
	public static function r6($cadena){
		$cadena=trim($cadena);
		return preg_match('/^<([a-z:a-zA-Z(\_\-)*])+((\s)[a-z]+\:[a-z]+\=\"[a-z]+\")*>.+<\/[a-z:a-zA-Z(\_\-)*]+(\s)*>/', $cadena);
	}


	public static function r7($cadena){
		$cadena=trim($cadena);
		return preg_match('/^<[a-z:a-zA-Z]+>/', $cadena);
	}

	public static function r8($cadena){
		$cadena=trim($cadena);
		return preg_match('/^<([a-z:(0-9)*a-zA-Z(_)*]+(\s)[a-z:a-zA-Z]+\\=\"http:\/\/[0-9a-zA-ZñÑáéíóúÁÉÍÓÚ\.\%\&\:\_\,\-\#\/\?\=\(\)\xe2\x80\x93\ä\로\하\_\에\콰\도\르\ö\ã)]*\"(\s))+\/>$/', $cadena);
	}

	public static function r9($cadena){
		$cadena=trim($cadena);
		return preg_match('/^<[a-z]+\-[a-z]+\:[a-zA-Z]+(\s)([a-z:a-z]+\=\"http:\/\/[0-9a-zA-ZñÑáéíóúÁÉÍÓÚ\.\_\,\;\-\xe2\x80\x93\(\)\&\ä\#\/\?\=\:\/]*\"(\s)*)+(\s)*\/>$/', $cadena);
	}

	public static function r10($cadena){
		$cadena=trim($cadena);
		return preg_match('/^<([a-z(0-9)*:a-zA-Z]+(\s)[a-z:a-z]+\=\"http:\/\/[0-9a-zA-ZñÑáéíóúÁÉÍÓÚ\.\%\&\:\_\,\-\#\/\?\=\(\)\xe2\x80\x93]*\")+>.+[a-z(0-9)*:a-zA-Z]+(\s)*>$/', $cadena);
	}
	
	public static function r11($cadena){
		$cadena=trim($cadena);
		return preg_match('/^<\/[a-z:a-zA-Z]+>/', $cadena);//Valida etiqueteas que cierran
	}

	public static function r12($cadena){
		$cadena=trim($cadena);
		return preg_match('/^<\/rdf:Description>/', $cadena);//Valida etiqueteas que cierran
	}

	public static function r13($cadena){
		$cadena=trim($cadena);
		return preg_match('/^<\/rdf:RDF>/', $cadena);//Valida etiqueteas que cierran
	}

	public static function r14($cadena){
		$cadena=trim($cadena);
		return preg_match('/^<rdf:RDF(\s)xmlns:[a-z0-9]+\\=\"http:\\/\\/[a-z0-9\.\-\#\/]+\"$/', $cadena);//rdf sin salto de linea completa
	}

	public static function r15($cadena){
		$cadena=trim($cadena);
		return preg_match('/^<\!\-\-((.*)\n*)+\-\->$/', $cadena);
	}

	public static function r16($cadena){
		$cadena=trim($cadena);
		return preg_match('/^<\!\-\-$/', $cadena);//COMENTARIOS
	}

	public static function r17($cadena){
		$cadena=trim($cadena);
		return preg_match('/^.+/', $cadena);//COMENTARIOS
	}

	public static function r18($cadena){
		$cadena=trim($cadena);
		return preg_match('/^\-\->$/', $cadena);//COMENTARIOS
	}

}
?>
