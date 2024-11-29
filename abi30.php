<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Subir Recetas</title>
</head>
<body> 
        <?php

$servername = "localhost";
$database = "receta";
$username = "root";
$password = "";

$Nombre = $_POST['Nombre'];
$Porciones = $_POST['Porciones'];
$Ingredientes = $_POST['Ingredientes'];
$Procedimiento = $_POST['Procedimiento'];


$conexion = mysqli_connect($servername,$username,$password,$database);
$sql = "INSERT INTO Bebidas (Nombre,Porciones,Ingredientes,Procedimiento) values ('$Nombre','$Porciones','$Ingredientes','$Procedimiento')";

if(mysqli_query($conexion, $sql)){
    header('location:donovan.php');
}

?>
<button><a href="/alta.php"></a></button>




</body>
</html>