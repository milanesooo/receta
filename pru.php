<?php
$conexion=mysqli_connect('localhost','root','','receta');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <br>
    <?php
$Sql="SELECT * from comida order by Porciones";
$result=mysqli_query($conexion,$Sql);


$Porciones="";
while ($mostrar=mysqli_fetch_array($result)) {
    if($Porciones!=$mostrar['Porciones']){
      
      $Porciones=$mostrar['Porciones'];
      echo "</table><br><br><table border='1'>
<tr>
  <td>Porciones</td>
  <td>Ingredientes</td>
  <td>Procedimiento</td>
</tr>";
    }

?>

              <tr>
                <td><?php echo $mostrar ['Porciones']?> </td>
                <td><?php echo $mostrar ['Ingredientes']?> </td>
                <td><?php echo $mostrar ['Procedimiento']?> </td>
    
              </tr>
              <?php
 }
?>

           </table>
</body>
</html>