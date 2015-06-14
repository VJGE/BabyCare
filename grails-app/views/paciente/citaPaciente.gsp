<html>
	<head>
		<title>Baby Care/Paciente/citaPaciente</title>
		<meta name="layout" content="main" />
		<asset:stylesheet src="mainPaciente.css"/>
		<asset:stylesheet src="mainMedico.css"/>
		<style type="text/css">
  			.regular{
  				width: auto;
  			}
  			.consultaIndividual{
  				padding: 1%;
  				border-color: #fff;
  				border-radius: 1%;
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
				<a href="" class="historia"> Historia clinica</a>
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
	<div id="Consultas_hoy">
			<h1 class="titulo_seccion"> Proximas Consultas </h1>	
			<div class="buttons" id="consul">
                <g:each var="p" in="${babycare.Consulta.findByDocumentoPacienteAndFinalizada(pacienteInstance.documento , false,[max: 10, sort: "date", order: "desc"])}">
                    <g:set var="medic" value="${babycare.Medico.findByDocumento(p.documentoMedico)}"/>
					<div class="consultaIndividual">
                        ${p.date}<br>
                        ${medic.nombre} ${medic.apellido}  ${medic.especialidad}<br>
                        Clinica: ${p.lugar}<br>
                        Tipo de consulta:  ${p.tipoDeConsulta}

                    </div><br>
                </g:each>
			</div>
	</div>
	</body>
</html>