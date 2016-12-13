
<?php 
session_start();

if(empty($_SESSION['id']))
{

  header("Location:../../../../error1.php");
}
include('../../../../cp/conexion.php');

$id=$_SESSION['id'];
$sql =" SELECT * 
        FROM  usuario
        WHERE id_usuario=$id";
$consulta = $enlace->query($sql);
$reg = $consulta->fetch_object();
//$_SESSION['cc']=$reg->id_datos

if($reg->tipo=="1"){
   $url_logo="../../../../cp/";
//__________________________________________________________


$sqlcc =" SELECT * FROM  cargos  
         ORDER BY id_cargo asc ";
$listarcc = $enlace->query($sqlcc);


$sqlusu ="  SELECT *  
        FROM  examen";
$listarusu = $enlace->query($sqlusu);




?>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



        <link rel="icon" type="image/png" href="<?php echo $url_logo; ?>riom.png" />
         <link href="../../../../cp/responsive.boostrap.min.css">
        <link href="../../../../cp/dataTables.bootstrap.min.css">
        <link href="../../../../cp/bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="../../../../cp/bootstrap/css/bootstrap-theme.css" rel="stylesheet">


  <title>RIOM/Examenes</title>
</head>
<body>
<div class="container">
  <header class="row"><nav class="navbar navbar-default navbar-static-top navbar-inverse">
  <div class="container-fluid ">
    <div class="navbar-header  navbar-right">
  


        <div></div>



      <ul class="navbar-nav nav">
         <li ><a href="../../php/editaru.php" class="navbar-brand"><h6>Hola <?php echo $reg->nom_usuario;?></h6></a></li>
                <li><form action='../../../../index.php' method='POST'>
                  <a href="#" class="navbar-brand">
                    <center><button id='salir' name='salir' class="btn btn-link" value='1' >
                    <span class="glyphicon glyphicon-remove"></span> </button></center></a></form>
               ></li>
    

      </ul>

</div>
<center>
<?php require($url_logo.'nombre.php'); ?>
</center>
</nav></header>










<!--   migas de pan   -->


<div class="container-fluid row">
<ol class="breadcrumb">
  <li><a href="../../">Admin</a></li>
  <li>Examenes</li>
</ol>
</div>









<!--    menu -->

<div class="row">
<div class="list-group col-md-3 hidden-xs " >
<a class="list-group-item"  href="../../">Inicio</a>
<a class="list-group-item"  href="../usuarios">Usuarios</a>
<a class="list-group-item"  href="../doctores">Doctores</a>
<a class="list-group-item active"   >Examenes</a>
<br>
</div>
<div class="col-md-2"></div>




<!--    tabla   -->
<div class="container-fluid">


      <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
<table border="0" align="center" class="table table-responsive ">
        <tr>
            <td width="100"><a href="#ventana1"  class="btn btn-primary" data-toggle="modal">Nuevo Examen</a></td>
                                                                                     
        </tr>
    </table>

            <div class="container-fluid">
           <table id="example" class="table table-condensed table-striped table-bordered dt-responsive table-hover nowrap" cellspacing="0" width="100%">
               <thead>
                    <tr>
                        <th>EXAMEN</th>
                        <th>PRECIO</th>
                        <th>CUBS</th> 
                       <th>OPCIONES</th>
                    </tr>
                </thead>
                  <tbody>
                    <?php

                    while($regusu=$listarusu->fetch_object())

            
                   {?>

                        
                         <tr>
                  
                        
                          <td><?php echo mb_convert_encoding($regusu->nom_examen, "UTF-8")?></td>
                          <td><?php echo mb_convert_encoding($regusu->precio, "UTF-8")?></td>
                          <td><?php echo mb_convert_encoding($regusu->cubs, "UTF-8")?></td>
                         <td><a href="php/editar.php?id=<?php echo $regusu->id_examen ?>"  class="glyphicon glyphicon-edit"></a> 
                             </tr>
                     
                        <?php } ?>
                </tbody>
            </table>
</div></select></div>


<!-- MODAL PARA EL REGISTRO DE PRODUCTOS-->
<div class="modal fade" id="ventana1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button tyle="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <center><h3 class="modal-tittle">Ingreso de Examenes</h3></center>
      </div>
      <div class="modal-body">
         <form id="formulario" class="form-horizontal"  enctype="multipart/form-data" action="php/insertar.php" method="POST">
         <fieldset>
           
           
                   <div class="form-group">
                       <label class="control-label col-md-2" for="nombre" >Nombre:</label> 
                       <div class="col-md-5">
                       <input class="form-control" type="text" name="name" id="name"></td>
                        </div></div>
                       

                   <div class="form-group">
                       <label class="control-label col-md-2" for="nombre" >precio:</label> 
                       <div class="col-md-5">
                       <input class="form-control" type="text" name="precio" id="precio"></td>
                        </div></div>
                    
                    <div class="form-group">
                      <label class="control-label col-md-2" for="nombre" >Cubs:</label> 
                       <div class="col-md-5">
                      <input class="form-control" type="text" name="cubs" id="cubs">
                        </div></div>
        
              <fieldset>

            </div>
            <div class="modal-footer">
            <botton class="btn close_link btn-danger" data-dismiss="modal">cancelar</botton>
              <input type="submit" value="Registrar" class="btn btn-success" id="reg"/>
                
            </div>
            </form>
      </div>  
    </div>
  </div>

</div>




</div>
</div>
       <script type="text/javascript" src="../../../../cp/jquery.js"></script>
        <script type="text/javascript" src="../../../../cp/myjava.js"></script>
        <script src="../../../../cp/bootstrap/js/bootstrap.js"></script>
        <script src="../../../../cp/jquery.dataTables.min.js"></script>
        <script src="../../../../cp/dataTables.responsive.min.js"></script>
        <script src="../../../../cp/dataTables.bootstrap.min.js"></script>
        <script>

        $(document).ready(function() {
        $('#example').DataTable();
        } );
        </script>
</body>
</html>
<?php }else{
  header("Location:../../../../error2.php");

}?>