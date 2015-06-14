<html>
	<head>
		<title>Baby Care/Paciente</title>
		<meta name="layout" content="main" />
		<asset:stylesheet src="mainPaciente.css"/>
		<asset:stylesheet src="bootstrap.min.css"/>
		<asset:javascript src="bootstrap.min.js"/>
		<asset:stylesheet src="carousel.css"/>
		<asset:javascript src="carousel.js"/>
		<asset:javascript src="navbar-fixed-top.css"/>
	</head>
	<body>
		<form name="form1" method="post" action="">
		<div class="buttons">
		<ul>
			<li>
				<a href="" class="datos"> Datos personales</a>
			</li>
			<li>
				<a href="" class="historia"> Historia clinica</a>
			</li>
			<li>
				<a href="" class="vacunas">Vacunas</a>
			</li>
			<li>
				<a href="" class="citas">Citas</a>
			</li>
			<li>
				<a href="" class="medicamentos">Medicamentos</a>
			</li>
			<li>
				<a href="/BabyCare/paciente/desarrolloPaciente" class="desarrollo">Desarrollo</a>
			</li>
		</ul>
		</div>
		</form>
		<div class="contentpac1">
			<h1>   </h1>
			<h1 align = "center"><img id="imagenPerfil" src="${g.createLink(controller:'paciente',action:'mostrarImagen',params:[id:pacienteInstance.id])}"></h1>
			<h3 class="text-center"><g:fieldValue bean="${pacienteInstance}" field="nombre"/>
			<g:fieldValue bean="${pacienteInstance}" field="apellido"/></h3>
			<h4 class="text-center-h4"><g:fieldValue bean="${pacienteInstance}" field="edad"/> años 
			<g:fieldValue bean="${pacienteInstance}" field="edadMeses"/> meses </h4>
			<h4 class="text-center-h4">Fecha de nacimiento: <g:formatDate format = "dd-MM-yyyy" date="${pacienteInstance?.fechaNacimiento}" /></h4>
			<h4 class="text-center-h4"><g:fieldValue bean="${pacienteInstance}" field="grupoSanguineo"/><g:fieldValue bean="${pacienteInstance}" field="rh"/></h4>	
		</div>
		<div class="contentpac2">
			<h1 class="text-center">TABLA DE DATOS</h1>
			<table border=1 bordercolor="silver" bgcolor="black">
			<tr><td>Fecha</td>
			<td>Edad</td>
			<td>Peso</td>
			<td>Talla</td>
			<td>PC</td></tr>
			<tr><td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td></tr>
			<tr><td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td></tr>
			<tr><td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td></tr>
			</table>
		</div>
	</body>
</html>
