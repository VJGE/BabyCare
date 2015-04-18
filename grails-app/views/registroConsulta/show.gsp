
<%@ page import="babycare.RegistroConsulta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registroConsulta.label', default: 'RegistroConsulta')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-registroConsulta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-registroConsulta" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registroConsulta">
			
				<g:if test="${registroConsultaInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="registroConsulta.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:fieldValue bean="${registroConsultaInstance}" field="fecha"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroConsultaInstance?.motivoConsulta}">
				<li class="fieldcontain">
					<span id="motivoConsulta-label" class="property-label"><g:message code="registroConsulta.motivoConsulta.label" default="Motivo Consulta" /></span>
					
						<span class="property-value" aria-labelledby="motivoConsulta-label"><g:fieldValue bean="${registroConsultaInstance}" field="motivoConsulta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroConsultaInstance?.conceptoMedico}">
				<li class="fieldcontain">
					<span id="conceptoMedico-label" class="property-label"><g:message code="registroConsulta.conceptoMedico.label" default="Concepto Medico" /></span>
					
						<span class="property-value" aria-labelledby="conceptoMedico-label"><g:fieldValue bean="${registroConsultaInstance}" field="conceptoMedico"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroConsultaInstance?.historiaMedica}">
				<li class="fieldcontain">
					<span id="historiaMedica-label" class="property-label"><g:message code="registroConsulta.historiaMedica.label" default="Historia Medica" /></span>
					
						<span class="property-value" aria-labelledby="historiaMedica-label"><g:link controller="historiaMedica" action="show" id="${registroConsultaInstance?.historiaMedica?.id}">${registroConsultaInstance?.historiaMedica?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:registroConsultaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${registroConsultaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
