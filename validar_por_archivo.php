<?php
include ("inc/config.php");
include ("template_path/head.php");
include ("template_path/header.php");
?>
<section id="about" class="about">
        <div class="container">
                    <fieldset class="front">
                        <legend class="main">Verifique por archivo</legend>
                        <p>Ingrese el documento RDF / XML en el campo de texto.</p>
                        <form action="fileRDF_validado.php" method="POST" enctype="multipart/form-data">
                        <label>Archivo</label>   
                          <div>
                        <input id="archivo" name= "archivo" type="file" class="file" multiple="true" data-preview-file-type="any"></div>
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