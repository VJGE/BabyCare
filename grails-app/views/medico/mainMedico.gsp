<!DOCTYPE html>
<html>
	<head>
		<title>Baby Care</title>
		<meta name="layout" content="main" />
		<asset:stylesheet src="mainPaciente.css"/>
		<asset:stylesheet src="mainMedico.css"/>
	</head>
	
	<body>
		
		<div id="busqueda">
			<div>
				<form class="Barra_busqueda">
					<input type="text" class="form-control" placeholder="Busqueda de pacientes">
				</form>
			</div>
			<div class="buttons">
				<h1 class="titulo_seccion"> Recientes </h1>
				<a class="regular">Paciente 1</a><br>
				<a class="regular">Paciente 2</a><br>
				<a class="regular">Paciente 3</a><br>
				<a class="regular">Paciente 4</a><br>
				
			</div>
			<div id="nuevoPacinete">
				<g:link controller ="paciente" action="create">
					<button type="button" class="btn btn-lg btn-danger">Nuevo Paciente</button>
				</g:link>
			</div>
		</div>
		
		<div id="Consultas_hoy">
			<h1 class="titulo_seccion"> Proximas Consultas </h1>	
			<div class="buttons" id="consul">						
				<a class="regular">Paciente 1</a><br>
				<a class="regular">Paciente 2</a><br>
				<a class="regular">Paciente 3</a><br>
				<a class="regular">Paciente 4</a><br>
			</div>
		</div>
		
		<div id="usuario">
			<h1 class="titulo_seccion"> Datos de usuario </h1>
			 <p>${session.medico.nombre}</p><br>
			 <p>${session.medico.apellido}</p><br>
			 <p>${session.medico.documento}</p><br>
			 <p>${session.medico.especialidad}</p><br>
		</div>
	</body>
</html>