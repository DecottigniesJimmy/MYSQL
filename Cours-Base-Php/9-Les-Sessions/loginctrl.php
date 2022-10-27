<?php 
session_start(); // Initialise une Session navigateur

$_SESSION["username"] = $_POST["username"]; // enregistre le username
$_SESSION["password"] = $_POST["password"]; // enregistre le password

header("location:loginsuite.php"); // redirige vers la page loginsuite.php
exit(); // préférable de mettre exit() après le header location

?>