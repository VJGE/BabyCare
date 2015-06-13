<html>
	<head>
		<title>Baby Care/Paciente</title>
		<meta name="layout" content="main" />
		<asset:stylesheet src="mainPaciente.css"/>
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
			<h1 class="text-center"><g:fieldValue bean="${pacienteInstance}" field="nombre"/>
			<g:fieldValue bean="${pacienteInstance}" field="apellido"/></h1>
			<h2 align = "center"><img id="imagenPerfil" src="${g.createLink(controller:'paciente',action:'mostrarImagen',params:[id:pacienteInstance.id])}"></h2>
			<h3><g:fieldValue bean="${pacienteInstance}" field="edad"/> años 
			<g:fieldValue bean="${pacienteInstance}" field="edadMeses"/> meses </h3>
			<h4>Fecha de nacimiento: <g:formatDate format = "dd-MM-yyyy" date="${pacienteInstance?.fechaNacimiento}" /></h4>
			
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
