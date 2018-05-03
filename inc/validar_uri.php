<?php

$url = $_POST['url'];
  if (filter_var($url, FILTER_VALIDATE_URL)) {
    echo("<div class='errores'> URI ingresada:<br> $url :<br>VÁLIDA</div>");

} else {
    echo("<div class='errores'> URIL ingresada:<br> $url :<br> NO ES VÁLIDA</div>");
}
?>