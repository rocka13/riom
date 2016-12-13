
<?php 
session_start();

if(empty($_SESSION['id']))
{

  header("Location:../../error1.php");
}
include('../../cp/conexion.php');

$id=$_SESSION['id'];
$sql =" SELECT * 
        FROM  usuario
        WHERE id_usuario=$id";
$consulta = $enlace->query($sql);
$reg = $consulta->fetch_object();

if($reg->tipo==2){
$url_logo="../../cp/";


$sql_ffhh_actual = "SELECT curdate() as fecha";
$ffhh_actual = $enlace->query($sql_ffhh_actual);
$ff= $ffhh_actual->fetch_object();
$fecha = $ff->fecha


?>






<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8" />
<title>Recepcion - Servicios</title>
<!-- Latest compiled and minified CSS -->
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="<?php echo $url_logo; ?>riom.png" />
<meta http-equiv="refresh" content="180" />
<link href="../../cp/responsive.boostrap.min.css">
<link href="../../cp/dataTables.bootstrap.min.css">
<link href="../../cp/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="../../cp/bootstrap/css/bootstrap-theme.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/stilo.css">
<link href="../../cp/bootstrap-datepicker.css" rel="stylesheet">
</head>

<body>

<div class="container">
<header class="row"><nav class="navbar navbar-default navbar-static-top navbar-inverse">
  <div class="container-fluid ">
    <div class="navbar-header  navbar-right">
  


        <div></div>

       <ul class="navbar-nav nav">
         <li ><a href="php/editaru.php" class="navbar-brand"><h6>Hola <?php echo $reg->nom_usuario;?></h6></a></li>
                <li><form action='../../index.php' method='POST'>
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

<div class="container-fluid row">
<ol class="breadcrumb">
  <li>Recepcion</a></li>
</ol>
</div>
<div class="row">
<div class="list-group col-md-12 hidden-xs " >

    <div class="target row col-md-7"> 
<div class="container col-md-12" id="form">
<button tyle="button" class="close btn btn-danger" id="ocultar">&times;</button>
<form class="form-horizontal form-cita" action="php/insertar.php" name="form1" id="form1" method="POST">
    <fieldset>

     <div class="form-group">
       <center> <h3 class="col-md-12" for="ffnac" >Ingreso de Datos del Paciente</h3> </center>
    </div>

        <div class="form-group">
        <label class="control-label col-md-3" for="cc" >Tipo Doc.</label> 
        <div class="col-md-3">
        <select id="tdc" class="form-control" type="text" name="tdc">
            <option value="CC">CC</option> 
            <option value="TI">TI</option>
            <option value="NIT">RC</option>
            <option value="CE">CE</option>
        </select>
        </div>
        <label class="control-label col-md-1" for="ndc" >No.</label> 
        <div class="col-md-5">
        <input id="ndc" class="form-control" type="text" placeholder="Digite la cedula:" name="ndc" ></input>
        </div><br><div class="col-md-8"></div><div id="error-ndc" class="text-danger"></div>
    </div>

    <div class="form-group">
        <label class="control-label  col-md-2" for="nombre1" >Nombre(1)</label> 
        <div class="col-md-4">
        <input id="nombre1" class="form-control nombre" type="text" placeholder="Primer nombre:" name="nombre1" ></input>
         </div>
          <label class="control-label  col-md-2" for="nombre2" >Nombre(2)</label> 
        <div class="col-md-4">
        <input id="nombre2" class="form-control nombre2" type="text" placeholder="Segundo nombre:" name="nombre2" ></input>
         </div>
    </div>

        <div class="form-group">
        <label class="control-label  col-md-2" for="apellido1" >Apellido(1)</label> 
        <div class="col-md-4">
        <input id="nombre3" class="form-control nombre" type="text" placeholder="Primer apellido:" name="apellido1" ></input>
         </div>
          <label class="control-label  col-md-2" for="apellido2" >Apellido(2)</label> 
        <div class="col-md-4">
        <input id="nombre4" class="form-control nombre" type="text" placeholder="Segundo apellido:" name="apellido2" ></input>
         </div><br><div class="col-md-3"></div> <div id="error-nombre" class="text-danger"></div></div>


<div class="form-group">
           <label class="control-label  col-md-2" for="telefono" >Telefono</label> 
        <div class="col-md-3">
        <input id="telefono" class="form-control" type="text" name="telefono"></input>
         </div>
        
        <div class="col-md-6">
          <label class="control-label" for="correo" >Sexo: </label> 
         <input type="radio" name="sexo" value="Masculino" checked> masculino         
         <input type="radio" name="sexo" value="Femenino"> femenino
         <input type="radio" name="sexo" value="Otros"> otros
     </div>
    </div>


      <div class="form-group">
        <label class="control-label  col-md-4" for="ffnac" >Fecha de nacimiento</label> 
        <div class="col-md-5">
        <input id="ffnac" class="form-control" type="date"  name="ffnac" required></input>
         </div>
         <div class="col-md-3" id="edad"></div>
        <br><div class="col-md-3"></div>
</div>


<div class="form-group">
    <center>
     <div class="col-md-9">
   <input type="reset" value="Borrar" onClick="resetForm()" class="btn btn-danger">
    <input type="submit" value="Ingresar" onClick="validarFormularios()" class="btn btn-primary citas">
  </div> </center>
    </div>



 <center id="resultados">
    <div class="container">
   <div id="respuesta"><div id="mensaje" name="mensaje" class="text-warning"></div>
    </div>
    </center>
  
    </fieldset>
</form></div>
</div>


      <div id="cuadro-tabla" class="row col-md-10 tabla col-sm-6 col-xs-4">
        <button id="mostrar" class="btn-success glyphicon glyphicon-paste botoncito-redondeado"></button>
        <div class="input-group  botones">
          <input type="text" value="<?php echo $ff->fecha; ?>" id="year" class="calendario form-control alert calendario alert alert-danger">
          <div class="input-group-btn ">
            <div class="btn-group-lg">
              <a type="button" title="Inicio" href="index.php" class="btn  btn-success glyphicon glyphicon-user"></a>
              <a type="button" title="Citas" href="usuarios.php" class="btn  btn-primary glyphicon glyphicon-list-alt"></a>
              <a type="button" title="Servicios" href="#" class="btn glyphicon glyphicon glyphicon-th-list active"></a>  
              <a type="button" title="Doctores" href="tablas/doctores" class="btn  btn-danger"><center><img style="width:20px;" src="iconos/dr.png"></center></a> 
              <a type="button" title="Examenes" href="tablas/examenes" class="btn  btn-info"><center><img style="width:20px;" src="iconos/exa.png"></center></a>
            </div>
          </div>
        </div>
      </div>

<!-- tabla y botoncito-->

<div class="row" id="cuadro-citas">
</div>
<script src="js/jquery.js"></script>
<script src="../../cp/bootstrap/js/bootstrap.min.js"></script>
<script src="js/validar-formularios.js"></script>
<script src="../../cp/jquery.dataTables.min.js"></script>
<script src="../../cp/dataTables.responsive.min.js"></script>
<script src="../../cp/dataTables.bootstrap.min.js"></script>
<script src="../../cp/bootstrap-datepicker.js"></script>
<script src="../../cp/bootstrap-datepicker.es.min.js"></script>
       
<script type="text/javascript">
    $(document).ready(function(){
        tabla_inicial();
        calendario();

        $("#mostrar").hover(function(){
            $('#target').show(3000);
            $('.target').show("slow");
           
//-------------------------
         });
        $("#ocultar").hover(function(){
            $('#target').hide(4000);
            $('.target').hide("slow");

});


$("·citas").click(function(){

         var url = "factura.php"; // El script a dónde se realizará la petición.
        var valor1=$("#id").val();
    $.ajax({

           type: "POST",

           url: url,

           data: {cita:valor1}, // Adjuntar los campos del formulario enviado.

           success: function(data)

           {
                var datos = eval(data);
               $("#num2").val(datos[0]);
               $("#num").text("Fact. No. "+datos[0]);

           }

  
   });
           

 

    return false; // Evitar ejecutar el submit del formulario.


});

       
//----------------------------

$('#year').change(function(){
  tabla_inicial();
  });
//-------------------------final



  });
//----------------------------
function tabla_inicial(){
  var url = "tabla_cuenta.php";
  var year = $("#year").val();
  $.ajax
  ({
    type: "POST",
    url: url,
    data: {year:year}, // Adjuntar los campos del formulario enviado.
    success: function(data)
    {
      $("#cuadro-citas").show("low").html(data);
    } 
  });

}
//-----------------------
function calendario()
       {
        $.fn.datepicker.defaults.format = "yyyy/mm/dd";
         $('.calendario').datepicker({
            format: "yyyy/mm/dd",
            language: "es",
            autoclose: true
    });
                    
       }
//-----------------------
 function enviar(id){
            var url = "php/enviar.php"; // El script a dónde se realizará la petición.
    $.ajax({

           type: "POST",

           url: url,

           data: {id:id}, // Adjuntar los campos del formulario enviado.

           success: function(data)

           {
             var datos = eval(data);
               $("#carta"+id).attr("src","iconos/"+datos[0]);
           }

  
   });
          

 

    return false; // Evitar ejecutar el submit del formulario.

};

//-------------------------

</script>
</body>
</html>
<?php }else{
  header("Location:../../error3.php");

}?>