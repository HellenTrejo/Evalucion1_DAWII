<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>

<title>Registra Proveedor</title>
</head>
<body>

<div class="container">
<h1>Registra Proveedor</h1>

	<c:if test="${sessionScope.MENSAJE != null}">
		<div class="alert alert-success fade in" id="success-alert">
		 <a href="#" class="close" data-dismiss="alert">&times;</a>
		 <strong>${sessionScope.MENSAJE}</strong>
		</div>
	</c:if>
	<c:remove var="MENSAJE" />

	<form action="registraProveedor" id="id_form" method="post"> 
			<input type="hidden" name="metodo" value="registra">	
			<div class="form-group">
				<label class="control-label" for="id_razonProveedor">Razón Social</label>
				<input class="form-control" type="text" id="id_razonProveedor" name="razonProveedor" placeholder="Ingrese la razón social">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_dirProveedor">Dirección Proveedor</label>
				<input class="form-control" id="id_dirProveedor" name="dirProveedor" placeholder="Ingrese la dirección" type="text" />
			</div>
			<div class="form-group">
				<label class="control-label" for="id_rucProveedor">Ruc Proveedor</label>
				<input class="form-control" id="id_rucProveedor" name="rucProveedor" placeholder="Ingrese el Ruc " type="text" />
			</div>
			<div class="form-group">
				<label class="control-label" for="id_fecRegProveedor">Fecha Registro</label>
				<input class="form-control" id="id_fecRegProveedor" name="fecRegProveedor" placeholder="Ingrese la fecha registro" type="text" />
			</div>
			<div class="form-group">
				<label class="control-label" for="id_categoria">Categoria</label>
				<select id="id_categoria" name="categoria.idCategoria" class='form-control'>
					<option value=" ">[Seleccione]</option>    
				</select>
		    </div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary" >Crea Proveedor</button>
			</div>
	</form>
</div>

<script type="text/javascript">
console.log("inicio");
$.getJSON("cargaCategoria", {}, function(data){
	console.log("inicio2");
	$.each(data, function(index,item){
		$("#id_categoria").append("<option value="+item.idCategoria +">"+ item.nombre +"</option>");
	});
});
</script>

<script type="text/javascript">
$("#success-alert").fadeTo(1000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>

<script type="text/javascript">

$('#id_form').bootstrapValidator({
    message: 'This value is not valid',
    feedbackIcons: {
        valid: 'glyphicon glyphicon-ok',
        invalid: 'glyphicon glyphicon-remove',
        validating: 'glyphicon glyphicon-refresh'
    },
    fields: {
    	razonProveedor: {
    		selector : '#id_razonProveedor',
            validators: {
                notEmpty: {
                    message: 'La razón social es un campo obligatorio'
                },
                stringLength :{
                	message:'La razón social es de 3 a 40 caracteres',
                	min : 3,
                	max : 40
                }
            }
        },
        dirProveedor: {
    		selector : '#id_dirProveedor',
            validators: {
                notEmpty: {
                    message: 'La dirección es un campo obligatorio'
                },
                stringLength :{
                	message:'La dirección es de 3 a 40 caracteres',
                	min : 3,
                	max : 40
                }
                
            }
        },
        rucProveedor: {
    		selector : '#id_rucProveedor',
            validators: {
            	notEmpty: {
                    message: 'El ruc es un campo obligatorio'
                },
                regexp: {
                    regexp: /^[0-9]{11}$/,
                    message: 'El RUC tiene 11 dígitos'
                }
                
            }
        },
        fecRegProveedor: {
    		selector : '#id_fecRegProveedor',
            validators: {
            	notEmpty: {
                    message: 'La fecha de registro es un campo obligatorio'
                },
                date: {
                    format: 'YYYY-MM-DD',
                    message:"El formato debe ser de año-mes-día"
                }
            }
        },
        
        categoria: {
    		selector : '#id_categoria',
            validators: {
            	notEmpty: {
                    message: 'La categoria un campo obligatorio'
                },
            }
        },
    	
    }   
});
</script>

<script type="text/javascript">
$("#success-alert").fadeTo(2000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>

</body>
</html>




