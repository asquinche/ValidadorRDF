<?php
include ("inc/config.php");
include ("template_path/head.php");
include ("template_path/header.php");
?>
<section id="about" class="about">
        <div class="container">
                    <fieldset class="front">
                        <legend class="main">Verifique por entrada directa</legend>
                        <p>Pegue un documento RDF / XML en el campo de texto.</p>
                        <form method="post" action="RDFdirect">  
                            <div class="form-group">
                                <textarea  class="form-control" id="texto" name="texto" rows="15" cols="75" required></textarea><br>
                                <button class="btn btn-primary" type="submit">Validar</button>
                                <button class="btn btn-default" type="reset">Borrar</button>
                            </div>
                        </form>
                    </fieldset><br><br><br>
                    <p>Este validador verifica la validez de documentos RDF/XML ya generados y publicados en la web. Verifica errores como: validez de sintaxis RDF/XML, duplicidad de datos, etiquetas abiertas y cerradas y comprueba que las uris sean válidas. Si desea validar otro contenido específico existen otros validadores y herramientas disponibles en la web</p>
        </div>               
    </section>
<?php
    include ("template_path/footer.php");
?> 