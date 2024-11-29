<?php
session_start();
$usuario=$_POST['correo'];
$clave=$_POST['clave'];
$base=mysqli_connect("localhost","root","","receta") or die ("Error al conectar tu base");
$consulta="select * from registra where correo='$usuario' and clave='$clave'";
$datos=mysqli_query($base, $consulta);
if ($fila=mysqli_fetch_assoc($datos)){
    $_SESSION['id']=$fila['id_usuario'];
    $_SESSION['correo']=$fila['correo'];
    $_SESSION['clave']=$fila['clave'];

    header('location:nat.html');
}
  else{
            header('location:login.html');
        }



?>
