<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "historial";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Conexion fallida: " . $conn->connect_error);
} 
?>