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
                <g:each var="p" in="${babycare.Consulta.findByDateLikeAndFinalizada(DateGroovyMethods.format(new Date(), 'MM/dd/yyyy'), false,[max: 10, sort: "date", order: "desc"])}">
					<a class="regular">p.documentoPaciente</a><br>
                </g:each>
			</div>
		</div>
		
		<div id="usuario">
			<h1 class="titulo_seccion"> Datos de usuario </h1>
			 <h3>Nombre:</h3>
			 <h4>${session.medico.nombre}</h4>
			 <h3>Apellido:</h3>
			 <h4>${session.medico.apellido}</h4>
			 <h3>Documento:</h3>
			 <h4>${session.medico.documento}</h4>
			 <h3>Especialidad:</h3>
			 <h4>${session.medico.especialidad}</h4>
		</div>
	</body>
</html>