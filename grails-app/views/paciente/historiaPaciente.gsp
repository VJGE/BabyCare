<html>
	<head>
		<title>Baby Care/Paciente/citaPaciente</title>
		<meta name="layout" content="main" />
		<asset:stylesheet src="mainPaciente.css"/>
		<asset:stylesheet src="mainMedico.css"/>
		<style type="text/css">
  			.consultaIndividual{
  				padding: 1%;
  				border-color: #fff;
  				border-radius: 1%;
  				margin-top: 1%;
  			}
		</style>
	</head>
	<body>
	<div id="busqueda">
		<div class="buttons" >
		<ul>
			<li>
				<a href="" class="datos"> Datos personales</a>
			</li>
			<li>
				<g:link action="historiaPaciente" id="${pacienteInstance.id}" class="historia">Historia Clinica</g:link>
				<!-- <a href="" class="historia"> Historia clinica</a> -->
			</li>
			<li>
				<a href="" class="vacunas">Vacunas</a>
			</li>
			<li>
				<g:link action="citaPaciente" id="${pacienteInstance.id}" class="citas">Citas</g:link>
				<!--<a href="/BabyCare/paciente/citaPaciente" class="citas">Citas</a>-->
			</li>
			<li>
				<a href="" class="medicamentos">Medicamentos</a>
			</li>
			<li>
				<a href="/BabyCare/paciente/desarrolloPaciente" class="desarrollo">Desarrollo</a>
			</li>
		</ul>
		</div>
		</div>
		
		<div id="Consultas_hoy"> <!-- se usa la misma id de la lista de consultas para medico pues usa el mismo estilo
									pero este listado de consultas muestra las proximas 10 sin importar que fecha son -->
			<g:each in="${pacienteInstance.historiaClinica.registrosConsultas}" var="p">
					<div class="consultaIndividual">
						<h5>${p.fecha}      <h4> Lugar </h4>  ${p.lugarConsulta}</h5>
						<p>${p.tipoConsulta}</p><br>
						<g:link controller="registroConsulta" action="verConsulta" id="${p.id}">Ver Consulta Completa</g:link>
					</div>
			</g:each>
				
		</div>
	</body>
</html>