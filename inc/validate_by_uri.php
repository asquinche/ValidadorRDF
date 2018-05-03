<?php
include('automata.php');
      $url = $_POST['url'];
      $lineas = file($url);
      $count_errors=0;
      $validador=new Automata();
      $validador->validar($lineas);
    ?> 