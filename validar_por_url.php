<?php
include ("inc/config.php");
include ("template_path/head.php");
include ("template_path/header.php");
?>
<!-- About -->
    <section id="about" class="about">
        <div class="container">
                    <fieldset class="front">
                        <legend class="main">Verifique por Uri</legend>
                        <p>Ingrese un URI de un documento RDF / XML en el campo de texto.</p>
                        <form method="post" action= "rdf_validado" id="formulario1">
                        <label>Dirección:</label>   
                          <input class="" type="url" pattern="(.+\.rdf)"  name="url" id="url" size="110" required>
                            <button class="btn btn-primary" type="submit">Validar</button>
                            <button class="btn btn-default" type="reset">Borrar</button>
                        </form>
                    </fieldset><br><br><br>
                    <div class="container">
                        <p>Este validador verifica la validez de documentos RDF/XML ya generados y publicados en la web. Verifica errores como: validez de sintaxis RDF/XML, duplicidad de datos, etiquetas abiertas y cerradas y comprueba que las uris sean válidas. Si desea validar otro contenido específico existen otros validadores y herramientas disponibles en la web</p>
                    </div>
                    
                </div>
    </section>
<?php
    include ("template_path/footer.php");
?>   