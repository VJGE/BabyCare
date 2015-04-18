
<%@ page import="babycare.Vacuna" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vacuna.label', default: 'Vacuna')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-vacuna" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-vacuna" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list vacuna">
			
				<g:if test="${vacunaInstance?.nombreVacuna}">
				<li class="fieldcontain">
					<span id="nombreVacuna-label" class="property-label"><g:message code="vacuna.nombreVacuna.label" default="Nombre Vacuna" /></span>
					
						<span class="property-value" aria-labelledby="nombreVacuna-label"><g:fieldValue bean="${vacunaInstance}" field="nombreVacuna"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vacunaInstance?.edadAplicacion}">
				<li class="fieldcontain">
					<span id="edadAplicacion-label" class="property-label"><g:message code="vacuna.edadAplicacion.label" default="Edad Aplicacion" /></span>
					
						<span class="property-value" aria-labelledby="edadAplicacion-label"><g:fieldValue bean="${vacunaInstance}" field="edadAplicacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vacunaInstance?.fechaAplicacion}">
				<li class="fieldcontain">
					<span id="fechaAplicacion-label" class="property-label"><g:message code="vacuna.fechaAplicacion.label" default="Fecha Aplicacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaAplicacion-label"><g:formatDate date="${vacunaInstance?.fechaAplicacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${vacunaInstance?.laboratorio}">
				<li class="fieldcontain">
					<span id="laboratorio-label" class="property-label"><g:message code="vacuna.laboratorio.label" default="Laboratorio" /></span>
					
						<span class="property-value" aria-labelledby="laboratorio-label"><g:fieldValue bean="${vacunaInstance}" field="laboratorio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vacunaInstance?.numeroLote}">
				<li class="fieldcontain">
					<span id="numeroLote-label" class="property-label"><g:message code="vacuna.numeroLote.label" default="Numero Lote" /></span>
					
						<span class="property-value" aria-labelledby="numeroLote-label"><g:fieldValue bean="${vacunaInstance}" field="numeroLote"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vacunaInstance?.centro}">
				<li class="fieldcontain">
					<span id="centro-label" class="property-label"><g:message code="vacuna.centro.label" default="Centro" /></span>
					
						<span class="property-value" aria-labelledby="centro-label"><g:fieldValue bean="${vacunaInstance}" field="centro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vacunaInstance?.observaciones}">
				<li class="fieldcontain">
					<span id="observaciones-label" class="property-label"><g:message code="vacuna.observaciones.label" default="Observaciones" /></span>
					
						<span class="property-value" aria-labelledby="observaciones-label"><g:fieldValue bean="${vacunaInstance}" field="observaciones"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vacunaInstance?.proximaCita}">
				<li class="fieldcontain">
					<span id="proximaCita-label" class="property-label"><g:message code="vacuna.proximaCita.label" default="Proxima Cita" /></span>
					
						<span class="property-value" aria-labelledby="proximaCita-label"><g:formatDate date="${vacunaInstance?.proximaCita}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:vacunaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${vacunaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
