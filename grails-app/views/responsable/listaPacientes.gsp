<!DOCTYPE html>
<html>
	<head>
		<title>Baby Care</title>
		<meta name="layout" content="main" />
		<asset:stylesheet src="mainResponsable.css"/>
	</head>
	<body>
		<section class="section-Personal">
	
		<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'responsable.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="documento" title="${message(code: 'responsable.documento.label', default: 'Documento')}" />
					
						<g:sortableColumn property="edad" title="${message(code: 'responsable.edad.label', default: 'Edad')}" />
					
						<g:sortableColumn property="tipoAfiliado" title="${message(code: 'responsable.tipoAfiliado.label', default: 'Tipo Afiliado')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${responsableInstance.paciente}" var="p">
					
						<td><g:link controller="paciente" action="datosPaciente" id="${p.id}">${p?.nombre} ${p?.apellido}</g:link></td>
					
						<td>${p.documento}</td>
					
						<td>${p.edad}</td>
					
						<td>${p.tipoAfiliado}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>

		</section>
		<g:form action="datosResp">
			<g:actionSubmit value="Regresar" action="mainResp" class="btn-navDR" />
		</g:form>
	</body>
</html>