
<?php 
session_start();

include('../../../cp/conexion.php');

$_SESSION['year']=$_POST['year'];
$_SESSION['mes']=$_POST['mes'];
$informe=$_POST['informe'];

if($informe==1){
	header('location: ventasp.php');
}elseif($informe==2){
	header('location: rips.php');
}elseif($informe==3){
	header('location: horas.php');
}elseif($informe==4){
	header('location: repetidas.php');
}else{ header('location: ../');}

?>
