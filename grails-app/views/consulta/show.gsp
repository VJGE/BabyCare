
<%@ page import="babycare.Consulta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'consulta.label', default: 'Consulta')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-consulta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-consulta" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list consulta">
			
				<g:if test="${consultaInstance?.documentoPaciente}">
				<li class="fieldcontain">
					<span id="documentoPaciente-label" class="property-label"><g:message code="consulta.documentoPaciente.label" default="Documento Paciente" /></span>
					
						<span class="property-value" aria-labelledby="documentoPaciente-label"><g:fieldValue bean="${consultaInstance}" field="documentoPaciente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${consultaInstance?.documentoMedico}">
				<li class="fieldcontain">
					<span id="documentoMedico-label" class="property-label"><g:message code="consulta.documentoMedico.label" default="Documento Medico" /></span>
					
						<span class="property-value" aria-labelledby="documentoMedico-label"><g:fieldValue bean="${consultaInstance}" field="documentoMedico"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${consultaInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="consulta.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${consultaInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${consultaInstance?.finalizada}">
				<li class="fieldcontain">
					<span id="finalizada-label" class="property-label"><g:message code="consulta.finalizada.label" default="Finalizada" /></span>
					
						<span class="property-value" aria-labelledby="finalizada-label"><g:formatBoolean boolean="${consultaInstance?.finalizada}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${consultaInstance?.asistencia}">
				<li class="fieldcontain">
					<span id="asistencia-label" class="property-label"><g:message code="consulta.asistencia.label" default="Asistencia" /></span>
					
						<span class="property-value" aria-labelledby="asistencia-label"><g:formatBoolean boolean="${consultaInstance?.asistencia}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${consultaInstance?.lugar}">
				<li class="fieldcontain">
					<span id="lugar-label" class="property-label"><g:message code="consulta.lugar.label" default="Lugar" /></span>
					
						<span class="property-value" aria-labelledby="lugar-label"><g:fieldValue bean="${consultaInstance}" field="lugar"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${consultaInstance?.tipoDeConsulta}">
				<li class="fieldcontain">
					<span id="tipoDeConsulta-label" class="property-label"><g:message code="consulta.tipoDeConsulta.label" default="Tipo De Consulta" /></span>
					
						<span class="property-value" aria-labelledby="tipoDeConsulta-label"><g:fieldValue bean="${consultaInstance}" field="tipoDeConsulta"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:consultaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${consultaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
