<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>REGISTRO DE CALIFICACIONES</title>
</head>
<body> 
        <?php

$servername = "localhost";
$database = "receta";
$username = "root";
$password = "";

$usuario = $_POST['usuario'];
$correo = $_POST['correo'];
$clave = $_POST['clave'];

$conexion = mysqli_connect($servername,$username,$password,$database);
$sql = "INSERT INTO registra (correo,clave,usuario) values ('$correo','$clave','$usuario')";

if(mysqli_query($conexion, $sql)){
    header('location:login.html');
}


?>
<button><a href="/alta.php"></a></button>




</body>
</html>