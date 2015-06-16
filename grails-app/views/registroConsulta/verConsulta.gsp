<html>
	<head>
		<title>Baby Care/Paciente/citaPaciente</title>
		<meta name="layout" content="main" />
		<asset:stylesheet src="mainPaciente.css"/>
		<asset:stylesheet src="mainMedico.css"/>
		<asset:stylesheet src="consulta.css"/>
	</head>
	<body>
	<div id="principal">
		<div>
			<h3>${registroConsultaInstance.fecha} Lugar ${registroConsultaInstance.lugarConsulta} </h3><br>
		</div>
		<h4>Tipo de consulta:  <h5> ${registroConsultaInstance.tipoConsulta}</h5></h4> <br>
		<h4> Concepto Medico</h4>
		<div id="campos">
			<h6> ${registroConsultaInstance.conceptoMedico} </h6>
		</div>
		<h4> Observaciones</h4>
		<div id="campos">
			<h6> ${registroConsultaInstance.observaciones} </h6>
		</div>
		
	</div>
	</body>
	
	</html>