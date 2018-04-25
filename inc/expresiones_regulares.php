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
		return preg_match('/^<([a-z:a-zA-Z]+(\s)[a-z:a-z]+\=\"http:\/\/[0-9a-zA-ZñÑáéíóúÁÉÍÓÚ\.\_\,\&\-\xe2\x80\x93\(\)\#\/\?\=\;]*\")+(\s)*>$/', $cadena);
	}


	//<rdfs:comment xml:lang="es">Una fuente de energía primaria es toda forma de energía disponible en la naturaleza antes de ser convertida o transformada. Consiste en la energía contenida en los combustibles crudos, la energía solar, la eólica, la geotérmica y otras formas de energía que constituyen una entrada al sistema. Si no es utilizable directamente, debe ser transformada en una fuente de energía secundaria .</rdfs:comment>
	public static function r6($cadena){
		$cadena=trim($cadena);
		return preg_match('/^<[a-z:a-zA-Z]+((\s)[a-z]+\:[a-z]+\=\"[a-z]+\")*>.+<\/[a-z:a-z]+(\s)*>/', $cadena);
	}


	public static function r7($cadena){
		$cadena=trim($cadena);
		return preg_match('/^<[a-z:a-zA-Z]+>/', $cadena);
	}

	//<prov:wasDerivedFrom rdf:resource="http://es.wikipedia.org/wiki/Energía_primaria?oldid=76356510"/>
	public static function r8($cadena){
		$cadena=trim($cadena);
		return preg_match('/^<([a-z:a-zA-Z]+(\s)[a-z:a-zA-Z]+\\=\"http:\/\/[0-9a-zA-ZñÑáéíóúÁÉÍÓÚ\.\_\,\;\-\xe2\x80\x93\(\)\&\#\/\?\=\:\/]*\"(\s)*)+\/>$/', $cadena);
	}

	//<prop-latam:wikiPageUsesTemplate rdf:resource="http://es-la.dbpedia.org/resource/Plantilla:Listaref"/>
	public static function r9($cadena){
		$cadena=trim($cadena);
		return preg_match('/^<[a-z]+\-[a-z]+\:[a-zA-Z]+(\s)([a-z:a-z]+\=\"http:\/\/[0-9a-zA-ZñÑáéíóúÁÉÍÓÚ\.\_\,\;\-\xe2\x80\x93\(\)\&\#\/\?\=\:\/]*\"(\s)*)+(\s)*\/>$/', $cadena);
	}

	public static function r10($cadena){
		$cadena=trim($cadena);
		return preg_match('/^<[a-z]+\-[a-z]+\:[a-zA-Z]+(\s)([a-z:a-z]+\=\"http:\/\/[0-9a-zA-ZñÑáéíóúÁÉÍÓÚ\.\_\,\;\-\xe2\x80\x93\#\(\)\&\/\?\=\:\/]*\")+>.+<\/[a-z]+\-[a-z]+\:[a-zA-Z]+(\s)*>$/', $cadena);
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

}
?>
