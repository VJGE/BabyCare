
<%@ page import="babycare.Paciente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-paciente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-paciente" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list paciente">
			
				<g:if test="${pacienteInstance?.peso}">
				<li class="fieldcontain">
					<span id="peso-label" class="property-label"><g:message code="paciente.peso.label" default="Peso" /></span>
					
						<span class="property-value" aria-labelledby="peso-label"><g:fieldValue bean="${pacienteInstance}" field="peso"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.talla}">
				<li class="fieldcontain">
					<span id="talla-label" class="property-label"><g:message code="paciente.talla.label" default="Talla" /></span>
					
						<span class="property-value" aria-labelledby="talla-label"><g:fieldValue bean="${pacienteInstance}" field="talla"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.pc}">
				<li class="fieldcontain">
					<span id="pc-label" class="property-label"><g:message code="paciente.pc.label" default="Pc" /></span>
					
						<span class="property-value" aria-labelledby="pc-label"><g:fieldValue bean="${pacienteInstance}" field="pc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.tipoNacimiento}">
				<li class="fieldcontain">
					<span id="tipoNacimiento-label" class="property-label"><g:message code="paciente.tipoNacimiento.label" default="Tipo Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="tipoNacimiento-label"><g:fieldValue bean="${pacienteInstance}" field="tipoNacimiento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.grupoSanguineo}">
				<li class="fieldcontain">
					<span id="grupoSanguineo-label" class="property-label"><g:message code="paciente.grupoSanguineo.label" default="Grupo Sanguineo" /></span>
					
						<span class="property-value" aria-labelledby="grupoSanguineo-label"><g:fieldValue bean="${pacienteInstance}" field="grupoSanguineo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.rh}">
				<li class="fieldcontain">
					<span id="rh-label" class="property-label"><g:message code="paciente.rh.label" default="Rh" /></span>
					
						<span class="property-value" aria-labelledby="rh-label"><g:fieldValue bean="${pacienteInstance}" field="rh"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.fechaNacimiento}">
				<li class="fieldcontain">
					<span id="fechaNacimiento-label" class="property-label"><g:message code="paciente.fechaNacimiento.label" default="Fecha Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="fechaNacimiento-label"><g:formatDate date="${pacienteInstance?.fechaNacimiento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.pesoNacimiento}">
				<li class="fieldcontain">
					<span id="pesoNacimiento-label" class="property-label"><g:message code="paciente.pesoNacimiento.label" default="Peso Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="pesoNacimiento-label"><g:fieldValue bean="${pacienteInstance}" field="pesoNacimiento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.tallaNacimiento}">
				<li class="fieldcontain">
					<span id="tallaNacimiento-label" class="property-label"><g:message code="paciente.tallaNacimiento.label" default="Talla Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="tallaNacimiento-label"><g:fieldValue bean="${pacienteInstance}" field="tallaNacimiento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.pcNacimiento}">
				<li class="fieldcontain">
					<span id="pcNacimiento-label" class="property-label"><g:message code="paciente.pcNacimiento.label" default="Pc Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="pcNacimiento-label"><g:fieldValue bean="${pacienteInstance}" field="pcNacimiento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.edadGestacional}">
				<li class="fieldcontain">
					<span id="edadGestacional-label" class="property-label"><g:message code="paciente.edadGestacional.label" default="Edad Gestacional" /></span>
					
						<span class="property-value" aria-labelledby="edadGestacional-label"><g:fieldValue bean="${pacienteInstance}" field="edadGestacional"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pacienteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pacienteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
