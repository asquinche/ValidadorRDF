<?php

$url = $_POST['url'];

if (filter_var($url, FILTER_VALIDATE_URL)) {
    echo("<div class='errores'> La URL ingresada:<br> $url :<br>ES VÁLIDA</div>");
} else {
    echo("<div class='errores'> La URL ingresada:<br> $url :<br> NO ES VÁLIDA</div>");
}
?>