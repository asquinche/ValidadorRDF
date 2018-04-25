<?php
include('automata.php');

      if (!isset($_POST['url'])) {
        echo "No ha ingresado una URL";
      }else{

      $url = $_POST['url'];
      $lineas = file($url);
      $count_errors=0;
      $validador=new Automata();
      $validador->validar($lineas);
    }
    
    ?> 