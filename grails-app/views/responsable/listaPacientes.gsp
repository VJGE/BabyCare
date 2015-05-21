<!DOCTYPE html>
<html>
	<head>
		<title>Baby Care</title>
		<meta name="layout" content="main" />
		<asset:stylesheet src="mainResponsable.css"/>
	</head>
	<body>
		<section class="section-Personal">
		<label class="indic">Nombre: </label>
		<g:form action="listaPacientes">
			<g:each in="${session.responsable.paciente}">
 		  		<p>Nombre: ${it.nombre}</p>
 		  	</g:each>
		</g:form>
		</section>
		<g:form action="datosResp">
			<g:actionSubmit value="Regresar" action="mainResp" class="btn-navDR" />
		</g:form>
	</body>
</html>